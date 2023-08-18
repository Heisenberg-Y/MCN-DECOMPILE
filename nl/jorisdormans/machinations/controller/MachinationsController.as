package nl.jorisdormans.machinations.controller
{
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import nl.jorisdormans.graph.GraphEvent;
   import nl.jorisdormans.machinations.model.MachinationsGraph;
import nl.jorisdormans.machinations.view.MachinationsEditView;
import nl.jorisdormans.machinations.view.MachinationsView;
   import nl.jorisdormans.machinations.view.RunReport;
   import nl.jorisdormans.utils.CSVHelper;
   import nl.jorisdormans.utils.JobFetcher;
   import nl.jorisdormans.utils.RemoteJob;

   public class MachinationsController
   {
       
      
      public var graph:MachinationsGraph;
      
      public var view:MachinationsView;
      
      private var runs:int;
      
      private var report:RunReport;
      
      private var timer:int;

      private var jobFetcher:JobFetcher;

      private var intervalId:uint;

      private var pullingInterval: int = 5000;
      
      public function MachinationsController(param1:MachinationsGraph, param2:MachinationsView)
      {
         super();
         this.graph = param1;
         this.view = param2;
         this.view.graph = param1;
         this.jobFetcher = new JobFetcher();
         this.intervalId = 0;
         param2.addEventListener(GraphEvent.GRAPH_RUN,this.onRun);
         param2.addEventListener(GraphEvent.GRAPH_PULL,this.onPull);
         param2.addEventListener(GraphEvent.GRAPH_QUICKRUN,this.onQuickRun);
         param2.addEventListener(GraphEvent.GRAPH_MULTIPLERUN,this.onMultipleRun);
      }
      
      private function onMultipleRun(param1:GraphEvent) : void
      {
         if(this.graph.running)
         {
            if(this.graph.ended)
            {
               this.graph.doEvents = true;
               this.graph.running = false;
               this.view.setInteraction(true);
               this.view.refresh();
               if(Boolean(this.report) && Boolean(this.report.parent))
               {
                  this.report.parent.removeChild(this.report);
               }
            }
            else
            {
               this.view.removeEventListener(Event.ENTER_FRAME,this.onEnterFrameMultipleRuns);
               this.graph.end("Quit by user");
            }
         }
         else
         {
            this.graph.doEvents = false;
            this.graph.running = true;
            this.view.setInteraction(false);
            this.view.addEventListener(Event.ENTER_FRAME,this.onEnterFrameMultipleRuns);
            this.runs = 0;
            this.report = new RunReport(this.view.parent,this.graph.numberOfRuns);
         }
      }
      
      private function onEnterFrameMultipleRuns(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(!this.graph.ended && _loc2_ < 10000)
         {
            _loc2_++;
            this.graph.update(1 / 10,true);
         }
         if(!this.graph.ended)
         {
            this.graph.end("Stopped before end");
         }
         this.view.refresh();
         ++this.runs;
         this.report.countEnd(this.graph.endCondition,this.graph.steps);
         if(this.runs < this.graph.numberOfRuns)
         {
            this.graph.running = false;
            this.graph.running = true;
         }
         else
         {
            this.view.removeEventListener(Event.ENTER_FRAME,this.onEnterFrameMultipleRuns);
            this.view.multipleRuns.caption = "Reset";
         }
      }
      
      private function onQuickRun(param1:GraphEvent) : void
      {
         if(this.graph.running)
         {
            if(this.graph.ended)
            {
               this.graph.doEvents = true;
               this.graph.running = false;
               this.view.setInteraction(true);
               this.view.refresh();
               if(Boolean(this.report) && Boolean(this.report.parent))
               {
                  this.report.parent.removeChild(this.report);
               }
            }
            else
            {
               this.view.removeEventListener(Event.ENTER_FRAME,this.onEnterFrameQuickRun);
               this.graph.end("Quit by user");
            }
         }
         else
         {
            this.graph.doEvents = false;
            this.graph.running = true;
            this.view.setInteraction(false);
            this.view.addEventListener(Event.ENTER_FRAME,this.onEnterFrameQuickRun);
         }
      }
      
      private function onEnterFrameQuickRun(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(!this.graph.ended && _loc2_ < 100)
         {
            _loc2_++;
            this.graph.update(1 / 10,true);
         }
         this.view.refresh();
         if(this.graph.ended)
         {
            this.view.removeEventListener(Event.ENTER_FRAME,this.onEnterFrameQuickRun);
            this.view.quickRun.caption = "Reset";
            this.report = new RunReport(this.view.parent,1);
            ++this.runs;
            this.report.countEnd(this.graph.endCondition,this.graph.steps);
         }
      }
      
      private function onRun(param1:GraphEvent) : void
      {
         this.graph.doEvents = true;
         this.graph.running = !this.graph.running;
         if(this.graph.running)
         {
            this.view.setInteraction(false);
            this.view.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.timer = getTimer();
         }
         else
         {
            this.view.setInteraction(true);
            this.view.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }

      private function onPull(param1:GraphEvent) : void {
         this.graph.pulling = !this.graph.pulling;
         if (this.graph.pulling) {
            this.startPeriodicPull();
         } else {
            this.stopPeriodicPull();
         }
      }

      private function startPeriodicPull():void {
         trace("startPeriodicPull here")
         this.jobFetcher.fetchNext(this.handleNextPull, this.handlePullFail);
         this.intervalId = setTimeout(startPeriodicPull, this.pullingInterval);
      }

      private function stopPeriodicPull():void {
         clearTimeout(this.intervalId);
         trace("PeriodicPull stopped.")
      }

      private function handleNextPull(job:RemoteJob):void {
         trace("handleNextPull here")
         if (job.id > 0 && this.graph.pulling) {
            this.jobFetcher.fetchDetail(job.id, this.handlePulledData, this.handlePullFail)
         }
      }

      private function handlePulledData(job:RemoteJob):void {
         trace("handlePulledData here")
         var csv:CSVHelper = new CSVHelper(null, job.data)

         if(this.graph.pulling){
            if (!this.graph.running) {
               (this.view as MachinationsEditView).onImportDataDetail(csv);
            }
            this.jobFetcher.postSuccess(job.id)
         }
      }

      private function handlePullFail(e: Event): void{
         trace("Pull fail: ", e.toString());
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:Number = (_loc2_ - this.timer) / 1000;
         this.timer = _loc2_;
         if(_loc3_ > 0.1)
         {
            _loc3_ = 0.1;
         }
         this.graph.update(_loc3_,true);
      }
   }
}
