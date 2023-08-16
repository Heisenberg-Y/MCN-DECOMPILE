package nl.jorisdormans.utils {
import flash.utils.ByteArray;

public class CSVHelper {
    private var data:String;
    private var items:Vector.<CSVItem>;

    public function CSVHelper(data:ByteArray) {
        this.data = data.toString();
        this.items = new Vector.<CSVItem>();
        super();
    }

    public function parse():void {
        var arr:Array = this.data.split("\r\n");
        for (var i:uint = 0; i < arr.length; i++) {
            var csvLine:String = arr[i];
            var blocks:Array = csvLine.split(",");
            if (blocks.length < 3) {
                trace("[CSVHelper] parse CSV line ", i + 1, " failed: ", csvLine)
                continue;
            }
            var item:CSVItem = new CSVItem();
            item.setCaption(StringUtil.trim(blocks[0]));
            item.setAttribute(StringUtil.trim(blocks[1]));
            item.setValue(StringUtil.trim(blocks[2]));
            if(item.getCaption() != null && item.getValue() != null && item.getAttribute() != null){
                trace("[CSVHelper] parse New CSVItem: ", item.toString())
                this.items.push(item);
            }
        }
    }

    public function getItems():Vector.<CSVItem> {
        return this.items;
    }
}

}