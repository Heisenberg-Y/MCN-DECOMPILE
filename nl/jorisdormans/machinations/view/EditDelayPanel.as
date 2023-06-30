package nl.jorisdormans.machinations.view
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import nl.jorisdormans.graph.GraphElement;
   import nl.jorisdormans.machinations.model.Delay;
   import nl.jorisdormans.machinations.model.MachinationsGraph;
   import nl.jorisdormans.machinations.model.MachinationsNode;
   import nl.jorisdormans.phantomGUI.PhantomCheckButton;
   import nl.jorisdormans.phantomGUI.PhantomControl;
   import nl.jorisdormans.phantomGUI.PhantomEditBox;
   import nl.jorisdormans.phantomGUI.PhantomEditNumberBox;
   import nl.jorisdormans.phantomGUI.PhantomLabel;
   import nl.jorisdormans.phantomGUI.PhantomToolButton;
import nl.jorisdormans.utils.DataEvent;

public class EditDelayPanel extends EditElementPanel
   {
       
      
      private var label:PhantomEditBox;
      
      private var actions:PhantomEditNumberBox;
      
      private var actionsLabel:PhantomLabel;
      
      private var passive:PhantomToolButton;
      
      private var interactive:PhantomToolButton;
      
      private var automatic:PhantomToolButton;
      
      private var onStart:PhantomToolButton;
      
      private var queue:PhantomCheckButton;
      
      public function EditDelayPanel(param1:MachinationsEditView, param2:DisplayObjectContainer, param3:Stage, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean = true, param9:Boolean = true)
      {
         super(param1,param2,param4,param5,param6,param7,param8,param9);
         new PhantomLabel("Label",this,labelX,controlY);
         this.label = new PhantomEditBox("Label",this,controlX,controlY,controlW);
         this.label.onChange = this.changeValue;
         controlY += 28;
         new PhantomLabel("Activation",this,labelX,controlY);
         this.passive = new PhantomToolButton("Passive",this.changeValue,this,controlX,controlY,24,24,false);
         this.passive.drawImage = MachinationsDraw.drawPassiveGlyph;
         this.passive.group = 1;
         this.interactive = new PhantomToolButton("Interactive",this.changeValue,this,controlX + 28,controlY,24,24,false);
         this.interactive.drawImage = MachinationsDraw.drawInteractiveGlyph;
         this.interactive.group = 1;
         this.automatic = new PhantomToolButton("Automatic",this.changeValue,this,controlX + 28 * 2,controlY,24,24,false);
         this.automatic.drawImage = MachinationsDraw.drawAutomaticGlyph;
         this.automatic.group = 1;
         this.onStart = new PhantomToolButton("OnStart",this.changeValue,this,controlX + 28 * 3,controlY,24,24,false);
         this.onStart.drawImage = MachinationsDraw.drawOnStartGlyph;
         this.onStart.group = 1;
         controlY += 28;
         this.actionsLabel = new PhantomLabel("Actions",this,labelX,controlY);
         this.actions = new PhantomEditNumberBox(1,0,1,this,controlX,controlY,controlNW);
         this.actions.min = 0;
         this.actions.onChange = this.changeValue;
         controlY += 28;
         this.queue = new PhantomCheckButton("Queue",this.changeValue,this,controlX,controlY,controlW,24);
      }
      
      override public function get element() : GraphElement
      {
         return super.element;
      }
      
      override public function set element(param1:GraphElement) : void
      {
         super.element = param1;
         if(param1 is MachinationsNode)
         {
            this.label.caption = (param1 as MachinationsNode).caption;
         }
         if(param1 is MachinationsNode && Boolean(this.passive))
         {
            this.passive.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_PASSIVE;
         }
         if(param1 is MachinationsNode && Boolean(this.interactive))
         {
            this.interactive.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_INTERACTIVE;
         }
         if(param1 is MachinationsNode && Boolean(this.automatic))
         {
            this.automatic.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_AUTOMATIC;
         }
         if(param1 is MachinationsNode && Boolean(this.onStart))
         {
            this.onStart.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_ONSTART;
         }
         if(param1 is MachinationsNode && Boolean(this.actions))
         {
            this.actions.value = (param1 as MachinationsNode).actions;
            if(((param1 as MachinationsNode).graph as MachinationsGraph).timeMode == MachinationsGraph.TIME_MODE_TURN_BASED)
            {
               this.actions.enabled = this.interactive.selected;
               this.actionsLabel.enabled = this.interactive.selected;
            }
            else
            {
               this.actions.enabled = false;
               this.actionsLabel.enabled = false;
            }
         }
         if(param1 is Delay && Boolean(this.queue))
         {
            this.queue.checked = (param1 as Delay).delayType == Delay.TYPE_QUEUE;
         }
      }
      
      override protected function changeValue(param1:PhantomControl) : void
      {
         if(param1 == this.label)
         {
            view.setValue("label",this.label.caption,0);
         }
         else if(param1 == this.passive || param1 == this.automatic || param1 == this.interactive || param1 == this.onStart)
         {
            view.setValue("activationMode",param1.caption.toLowerCase(),0);
            if(((this.element as MachinationsNode).graph as MachinationsGraph).timeMode == MachinationsGraph.TIME_MODE_TURN_BASED)
            {
               this.actions.enabled = param1 == this.interactive;
               this.actionsLabel.enabled = param1 == this.interactive;
            }
            else
            {
               this.actions.enabled = false;
               this.actionsLabel.enabled = false;
            }
         }
         else if(param1 == this.actions)
         {
            view.setValue("actions",null,this.actions.value);
         }
         else if(param1 == this.queue)
         {
            view.setValue("delayType",this.queue.checked ? Delay.TYPE_QUEUE : Delay.TYPE_NORMAL,0);
         }
         else
         {
            super.changeValue(param1);
         }
      }

      protected override function refresh(e: DataEvent): void {
         var param1:GraphElement = this.element;
         if(param1 is MachinationsNode)
         {
            this.label.caption = (param1 as MachinationsNode).caption;
         }
         if(param1 is MachinationsNode && Boolean(this.passive))
         {
            this.passive.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_PASSIVE;
         }
         if(param1 is MachinationsNode && Boolean(this.interactive))
         {
            this.interactive.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_INTERACTIVE;
         }
         if(param1 is MachinationsNode && Boolean(this.automatic))
         {
            this.automatic.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_AUTOMATIC;
         }
         if(param1 is MachinationsNode && Boolean(this.onStart))
         {
            this.onStart.selected = (param1 as MachinationsNode).activationMode == MachinationsNode.MODE_ONSTART;
         }
         if(param1 is MachinationsNode && Boolean(this.actions))
         {
            this.actions.value = (param1 as MachinationsNode).actions;
            if(((param1 as MachinationsNode).graph as MachinationsGraph).timeMode == MachinationsGraph.TIME_MODE_TURN_BASED)
            {
               this.actions.enabled = this.interactive.selected;
               this.actionsLabel.enabled = this.interactive.selected;
            }
            else
            {
               this.actions.enabled = false;
               this.actionsLabel.enabled = false;
            }
         }
         if(param1 is Delay && Boolean(this.queue))
         {
            this.queue.checked = (param1 as Delay).delayType == Delay.TYPE_QUEUE;
         }
      }
   }
}
