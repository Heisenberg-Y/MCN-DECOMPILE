package nl.jorisdormans.graph
{
   public class GraphGrammar
   {
       
      
      public var symbols:Vector.<nl.jorisdormans.graph.GraphSymbol>;
      
      public var connectionTypes:Vector.<nl.jorisdormans.graph.GraphConnectionType>;
      
      public var name:String;
      
      public function GraphGrammar()
      {
         super();
         this.symbols = new Vector.<nl.jorisdormans.graph.GraphSymbol>();
         this.connectionTypes = new Vector.<nl.jorisdormans.graph.GraphConnectionType>();
         this.clear();
         this.createDefaultGrammar();
      }
      
      public function clear() : void
      {
         this.symbols.splice(0,this.symbols.length);
         this.connectionTypes.splice(0,this.connectionTypes.length);
         this.name = "";
      }
      
      public function createDefaultGrammar() : void
      {
         this.symbols.push(new nl.jorisdormans.graph.GraphSymbol(GraphNode,"node","n",1,0,16777215,0));
         this.connectionTypes.push(new nl.jorisdormans.graph.GraphConnectionType(GraphConnection,"connection",0,1,nl.jorisdormans.graph.GraphConnectionType.STYLE_SOLID,nl.jorisdormans.graph.GraphConnectionType.ARROW_NONE,nl.jorisdormans.graph.GraphConnectionType.ARROW_MEDIUM));
      }
      
      public function getSymbol(param1:String) : nl.jorisdormans.graph.GraphSymbol
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.symbols.length)
         {
            if(this.symbols[_loc2_].name == param1)
            {
               return this.symbols[_loc2_];
            }
            _loc2_++;
         }
         if(this.symbols.length > 0)
         {
            return this.symbols[0];
         }
         return null;
      }
      
      public function getConnectionType(param1:String) : nl.jorisdormans.graph.GraphConnectionType
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.connectionTypes.length)
         {
            if(this.connectionTypes[_loc2_].name == param1)
            {
               return this.connectionTypes[_loc2_];
            }
            _loc2_++;
         }
         if(this.connectionTypes.length > 0)
         {
            return this.connectionTypes[0];
         }
         return null;
      }
   }
}
