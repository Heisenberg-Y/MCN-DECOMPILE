package nl.jorisdormans.utils {
import flash.utils.ByteArray;
    public class CSVItem {
        private var caption: String;
        private var attribute: String;
        private var value: String

        //the item defined in csv
        public static var PULL_MODE: String = "Pull Mode";
        public static var ACTION_MODE: String = "Activation";
        public static var ACTIONS: String = "Actions";
        public static var THICKNESS: String = "Thickness";
        public static var SIZE: String = "Size";
        public static var CAPACITY: String = "Capacity";
        public static var DISPLAY_CAP: String = "Display Cap.";
        public static var NUMBER: String = "Number";
        public static var MIN_VALUE: String = "Min. Value";
        public static var MAX_VALUE: String = "Max. Value";
        public static var STARTING_VALUE: String = "Starting Value";
        public static var STEP: String = "Step";
        public static var LABEL: String = "Label";

        public function CSVItem()
        {
            super();
        }

        public function setCaption(caption: String): void{
            this.caption = caption;
        }
        public function setAttribute(attr: String): void{
            this.attribute = attr;
        }

        public function setValue(value: String): void{
            this.value = value;
        }

        public function toString(): String{
            return this.caption + "-" + this.attribute + "-" + this.value;
        }

        public function getCaption(): String{
            return this.caption;
        }

        public function getAttribute(): String {
            return this.attribute;
        }


        public function getValue(): String {
            return this.value;
        }


    }

}