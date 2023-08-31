package nl.jorisdormans.utils {

public class CSVItem {
    private var caption:String;
    private var attribute:String;
    private var value:String

    internal const trueValues:Array = ["yes", "1", "true"];
    internal const falseValues:Array = ["no", "0", "false"];

    //the item defined in csv
    public static var COLOR:String = "color";
    public static var PULL_MODE:String = "pull mode";
    public static var ACTIVATION_MODE:String = "activation";
    public static var ACTIONS:String = "actions";
    public static var THICKNESS:String = "thickness";
    public static var CAPACITY:String = "capacity";
    public static var DISPLAY_CAP:String = "display cap.";
    public static var NUMBER:String = "number";
    public static var MIN_VALUE:String = "min. value";
    public static var MAX_VALUE:String = "max. value";
    public static var STARTING_VALUE:String = "starting value";
    public static var STEP:String = "step";
    public static var LABEL:String = "label";
    public static var RESOURCES:String = "resources";
    public static var TYPE:String = "type";
    public static var QUEUE:String = "queue";
    public static var SCRIPT:String = "script";
    public static var ACTIONSPERTURN:String = "actions/turn";

    public function CSVItem() {
        super();
    }

    public function setCaption(caption:String):void {
        this.caption = caption;
    }

    public function setAttribute(attr:String):void {
        this.attribute = attr;
    }

    public function setValue(value:String):void {
        this.value = value;
    }

    public function toString():String {
        return "caption: \"" + this.caption +
                "\", attribute: \"" + this.attribute +
                "\", value: \"" + this.value + "\"";
    }

    public function getCaption():String {
        return this.caption;
    }

    public function getAttribute():String {
        return this.attribute.toLowerCase().replace(/\s+/g, " ");
    }

    public function getValue():String {
        return this.value;
    }

    public function getValueBool(): Boolean {
        const lowerValue:String = this.value.toLowerCase();

        if (trueValues.indexOf(lowerValue) !== -1) {
            return true;
        } else if (falseValues.indexOf(lowerValue) !== -1) {
            return false;
        } else {
            throw new Error("Invalid boolean representation: " + this.value);
        }
    }

}
}