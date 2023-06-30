package nl.jorisdormans.utils {
public class SimpleListener {
    public var callback: Function;
    public var event: DataEvent
    public function SimpleListener(event: DataEvent, callback: Function){
        this.callback = callback
        this.event = event
    }
}
}