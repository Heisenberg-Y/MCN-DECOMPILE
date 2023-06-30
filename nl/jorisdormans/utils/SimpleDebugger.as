package nl.jorisdormans.utils {
    import flash.net.FileReference;

    //cannot find the trace dll in the flash
    public class SimpleDebugger {
        private var content: String;
        private var fr: FileReference;
        public function SimpleDebugger()
        {

            this.fr = new FileReference();
            this.content = "";
        }

        public function write(p: String): void{
            this.content += p +"\r\n";
        }

        public function save(): void{
            if(this.fr != null){
                this.fr.save(this.content, "debug.txt");
            }
        }

        public function close(): void{
//            this.stream.close();
        }

        public static var debug: SimpleDebugger = new SimpleDebugger();
    }

}