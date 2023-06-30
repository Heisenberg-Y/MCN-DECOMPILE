package nl.jorisdormans.utils {

import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequestMethod;
import flash.net.URLRequest;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.HTTPStatusEvent;
import flash.utils.setTimeout;


import nl.jorisdormans.machinations.model.MachinationsGraph;
import nl.jorisdormans.graph.GraphEvent
import nl.jorisdormans.machinations.view.MachinationsEditView;

// This class is used for pulling the job
// And apply for job
public class RemoteController {


    private var jobFetcher:JobFetcher
    private var graph:MachinationsGraph
    private var editView:MachinationsEditView
    private var isRunning:Boolean = false

    private var pullingInterval: int = 5000
    private var timeoutHandler: Object


    public function get running():Boolean {
        return this.isRunning
    }

    public function RemoteController() {
        jobFetcher = new JobFetcher()
        this.graph = null
        this.editView = null
        DataEventDispatcher.GetInstance().addEventListener(DataEvent.CSV_LOADED, this.handleCSVLoadedEvent)
    }

    public function SetGraph(graph:MachinationsGraph):void {
        this.graph = graph
    }

    public function setEditView(editView:MachinationsEditView):void {
        this.editView = editView
    }

    public function pull():void {
        this.timeoutHandler = null
        this.jobFetcher.fetchNext(this.handleNextJob, this.handleFailPull)
    }

    public function pressControl():void {
        this.isRunning = !this.isRunning
        if (this.isRunning) {
            this.pull()
        }
    }

    private function handleNextJob(job:RemoteJob):void {
        if (job.id > 0 && this.running) {
            this.jobFetcher.fetchDetail(job.id, this.handleFetchJobDetail, this.handleFailPull)
        } else {
            if(this.timeoutHandler == null &&this.running){
                this.timeoutHandler = setTimeout(this.pull, this.pullingInterval)
            }
        }
    }

    private function handleFetchJobDetail(job:RemoteJob):void {


        var csv:CSVHelper = new CSVHelper(null, job.data)

        //do not change data while running to keep current result consistent

        if(this.running){
            if (this.graph && !this.graph.running) {
                this.graph.addCSV(csv)
            }
            //do not pull immediately wait for several second to let data populate
            if(this.timeoutHandler == null){
                this.timeoutHandler = setTimeout(this.pull, this.pullingInterval)
            }

            this.jobFetcher.postSuccess(job.id)

        }



    }

    private function handleCSVLoadedEvent(e:DataEvent):void {

    }

    private function handleFailPull(e: Object): void{
        if(this.isRunning){
            //do not pull immediately wait for several second to let data populate
            if(this.timeoutHandler == null){
                this.timeoutHandler = setTimeout(this.pull, this.pullingInterval)
            }



        }
    }
}

}