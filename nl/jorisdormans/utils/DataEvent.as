package nl.jorisdormans.utils {

import flash.events.Event;
public class DataEvent extends Event
    {

        public static const CSV_ATTR_CHANGED :String = "csv attr changed";

        public static const CSV_LOADED: String = "csv loaded emmm"

        public var event_name: String

        public function DataEvent(param1:String)
        {
            super(param1, true);
            this.event_name = param1

        }

}
}