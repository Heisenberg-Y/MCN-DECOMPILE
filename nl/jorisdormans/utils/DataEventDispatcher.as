package nl.jorisdormans.utils {
import flash.events.EventDispatcher;

// the reason why we create this is that
// the flash Event dispatcher is bound with stage or sprite in the display list
// therefore we might need to figure out the sprite hierarchy to bubble the event
// which is inconvinient since flash is not supported anymore
public class DataEventDispatcher {
    private static var dispatcher:DataEventDispatcher = null;

    private var listener: Vector.<SimpleListener>

    public function DataEventDispatcher (enforcer:SingletonEnforcer) : void {
        if (!enforcer) {
            throw new Error("Direct instatiation is not allowed");
        }
        return;
    }// end function

    public function addEventListener(e: String, callback: Function): void{
        this.listener.push(new SimpleListener(new DataEvent(e), callback))

    }

    public function removeEventListener(callback: Function): void {

        for(var i:int =0; i < listener.length; i++){
            if(listener[i].callback == callback){
                listener.splice(i,1)
                break;
            }
        }
    }

    public function dispatchEvent(e: DataEvent): void{
        var l: SimpleListener = null;
        for each(l in this.listener ){
            if(l.event.event_name == e.event_name){

                l.callback(e)
            }

        }
    }
    public static function GetInstance() : DataEventDispatcher {
        if (!dispatcher) {
            dispatcher= new DataEventDispatcher (new SingletonEnforcer());
            dispatcher.listener = new Vector.<SimpleListener>()
        }// end if
        return dispatcher;
    }// end function
}
}

import nl.jorisdormans.utils.DataEvent;

class SingletonEnforcer {}

