package nl.jorisdormans.utils {
import flash.utils.ByteArray;
public class CSVHelper {
    private var data: String;
    private var items: Vector.<CSVItem>;
    public function CSVHelper(data: ByteArray)
    {
        this.data = data.toString();

        this.items = new Vector.<CSVItem>();
        super();
    }

    public function parse(): void{
        var arr: Array = this.data.split("\r\n");
        for(var i: uint = 0; i < arr.length; i++){
            var ss: String = arr[i];
            var dels: Array = ss.split(",");
            var item: CSVItem = new CSVItem();
            item.setCaption(dels[0]);
            item.setAttribute(dels[1]);
            item.setValue(dels[2]);
            this.items.push(item);
            SimpleDebugger.debug.write(item.toString());
        }
    }

    public function getItems(): Vector.<CSVItem>{
        return this.items;
    }
}

}