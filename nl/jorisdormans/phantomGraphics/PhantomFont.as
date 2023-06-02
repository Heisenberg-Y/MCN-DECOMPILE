package nl.jorisdormans.phantomGraphics
{
   import flash.display.Graphics;
   import flash.geom.Point;
   
   public class PhantomFont
   {
      
      private static var font:Vector.<nl.jorisdormans.phantomGraphics.PhantomShape>;
      
      private static var widths:Vector.<Number>;
      
      public static var lineHeight:Number;
      
      public static var characterSpacing:Number;
      
      private static var characterHeight:Number;
      
      public static var smallCaps:Boolean = false;
      
      public static const ALIGN_LEFT:String = "left";
      
      public static const ALIGN_RIGHT:String = "right";
      
      public static const ALIGN_CENTER:String = "center";
       
      
      public function PhantomFont()
      {
         super();
      }
      
      public static function createSimpleFont() : void
      {
         createFont4();
      }
      
      public static function createFont() : void
      {
         font = new Vector.<nl.jorisdormans.phantomGraphics.PhantomShape>();
         widths = new Vector.<Number>();
         var _loc1_:int = 0;
         while(_loc1_ < 128)
         {
            widths.push(0);
            font.push(null);
            _loc1_++;
         }
         widths[32] = 15;
         characterHeight = 60;
         characterSpacing = 10 / 60;
         lineHeight = 1.25;
         font[48] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,1,2,2,2,2),new Array(0,0,40,0,40,-60,0,-60,0,0,20,-10,30,-10,30,-50,20,-50,20,-10),0);
         widths[48] = 40;
         font[49] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2),new Array(10,0,30,0,30,-60,10,-60,0,-40,10,-40,10,0),0);
         widths[49] = 40;
         font[50] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-10,20,-10,20,-23.2,40,-33.2,40,-60,0,-60,0,-44.2,20,-44.2,20,-50,30,-50,30,-43.2,0,-28.4,0,0),0);
         widths[50] = 40;
         font[51] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-60,0,-60,0,-50,20,-50,20,-40,10,-40,10,-30,20,-30,20,-10,10,-10,10,-20,0,-20,0,0),0);
         widths[51] = 40;
         font[52] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2),new Array(18.6,0,38.6,0,38.6,-20,41.8,-20,41.8,-30,38.6,-30,38.6,-60,18.6,-60,0,-31.2,0,-20,18.6,-20,18.6,0,18.6,-30,18.6,-41.4,12,-30,18.6,-30),0);
         widths[52] = 40;
         font[53] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-30,20,-40,20,-50,40,-50,40,-60,0,-60,0,-35.6,30,-20,30,-10,20,-10,20,-16.8,0,-16.8,0,0),0);
         widths[53] = 40;
         font[54] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,1,2,2,2,2),new Array(0,0,40,0,40,-30,20,-40,20,-50,40,-50,40,-60,0,-60,0,0,20,-10,30,-10,30,-21.8,20,-26.8,20,-10),0);
         widths[54] = 40;
         font[55] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2),new Array(10,0,30,0,30,-28.8,39.8,-48.8,39.8,-60,0,-60,0,-50,20,-50,10,-30,10,0),0);
         widths[55] = 40;
         font[56] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,1,2,2,2,2,1,2,2,2,2),new Array(0,0,40,0,40,-60,0,-60,0,0,20,-10,30,-10,30,-30,20,-30,20,-10,30,-40,30,-50,20,-50,20,-40,30,-40),0);
         widths[56] = 40;
         font[57] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,1,2,2,2,2),new Array(20,0,40,0,40,-60,0,-60,0,-30,20,-20,20,0,10,-37.8,20,-33.6,20,-50,10,-50,10,-38),0);
         widths[57] = 40;
         font[65] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,1,2,2,2,2),new Array(0,0,20,0,20,-20,30,-20,30,0,40,0,40,-60,0,-60,0,0,20,-30,30,-30,30,-40,20,-40,20,-30),0);
         widths[65] = 40;
         font[66] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2),new Array(0,0,40,0,40,-40,30,-40,30,-60,0,-60,0,0,14.62,-40,20,-40,20,-50,14.67,-50,14.67,-40,20,-10,30,-10,30,-30,20,-30,20,-10),0);
         widths[66] = 40;
         font[67] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-20,30,-20,30,-10,20,-10,20,-50,30,-50,30,-40,40,-40,40,-60,0,-60,0,0),0);
         widths[67] = 40;
         font[68] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,1,2,2,2,2,2),new Array(0,0,40,0,40,-40,30,-60,0,-60,0,0,20,-10,30,-10,30,-37.6,23.85,-50,20,-50,20,-10),0);
         widths[68] = 40;
         font[69] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-10,20,-10,20,-30,30,-30,30,-40,20,-40,20,-50,40,-50,40,-60,0,-60,0,0),0);
         widths[69] = 40;
         font[70] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2),new Array(0,0,20,0,20,-30,30,-30,30,-40,20,-40,20,-50,40,-50,40,-60,0,-60,0,0),0);
         widths[70] = 40;
         font[71] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-30,25.02,-30,25.12,-20,30,-20,30,-10,20,-10,20,-50,30,-50,30,-40,40,-40,40,-60,0,-60,0,0),0);
         widths[71] = 40;
         font[72] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,20,0,20,-30,30,-30,30,0,40,0,40,-60,30,-60,30,-40,20,-40,20,-60,0,-60,0,0),0);
         widths[72] = 40;
         font[73] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,0,20,0,20,-60,0,-60,0,0),0);
         widths[73] = 20;
         font[74] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-60,10,-60,10,-50,20,-50,20,-10,10,-10,10,-30,0,-30,0,0),0);
         widths[74] = 40;
         font[75] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,20,0,20,-23.96,37.17,0,50,0,30,-30,50,-60,37.01,-60,20,-34.91,20,-60,0,-60,0,0),0);
         widths[75] = 50;
         font[76] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2),new Array(0,0,40,0,40,-10,20,-10,20,-60,0,-60,0,0),0);
         widths[76] = 40;
         font[77] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,0,-60,20,-60,30,-40,40,-60,50,-60,50,0,40,0,40,-40,30,-20,20,-40,20,0,0,0),0);
         widths[77] = 50;
         font[78] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,0,-60,20,-60,30,-40,30,-60,40,-60,40,0,30,0,30,-20,20,-40,20,0,0,0),0);
         widths[78] = 40;
         font[79] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,1,2,2,2,2),new Array(0,0,40,0,40,-60,0,-60,0,0,20,-20,30,-20,30,-40,20,-40,20,-20),0);
         widths[79] = 40;
         font[80] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,1,2,2,2,2),new Array(0,0,20,0,20,-20,40,-20,40,-60,0,-60,0,0,20,-30,30,-30,30,-40,20,-40,20,-30),0);
         widths[80] = 40;
         font[81] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,1,2,2,2,2),new Array(0,0,30,0,47.4,10,47.4,-5.8,40,-10,40,-60,0,-60,0,0,20,-20,30,-20,30,-40,20,-40,20,-20),0);
         widths[81] = 40;
         font[82] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,1,2,2,2,2),new Array(0,0,20,0,20,-20,30,0,42.4,0,32.4,-20,40,-20,40,-60,0,-60,0,0,20,-30,30,-30,30,-40,20,-40,20,-30),0);
         widths[82] = 40;
         font[83] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-40,20,-40,20,-50,40,-50,40,-60,0,-60,0,-30,30,-30,30,-10,20,-10,20,-20,0,-20,0,0),0);
         widths[83] = 40;
         font[84] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2),new Array(10,0,30,0,30,-50,40,-50,40,-60,0,-60,0,-50,10,-50,10,0),0);
         widths[84] = 40;
         font[85] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-60,30,-60,30,-10,20,-10,20,-60,0,-60,0,0),0);
         widths[85] = 40;
         font[86] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2),new Array(10,0,30,0,40,-20,39.99,-60,30,-60,30,-23.4,23,-10,20,-10,20,-60,0,-60,0,-20,10,0),0);
         widths[86] = 40;
         font[87] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2),new Array(10,0,20,0,30,-20,40,0,49.8,0,50,-60,40,-60,40,-20,30,-40,20,-20,20,-60,0.01,-60,0.01,-20,10,0),0);
         widths[87] = 50;
         font[88] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2),new Array(0,0,12,0,20,-17.01,28.2,0,47.2,0,28.4,-35.2,38,-60,27,-60,22.2,-46.8,16.6,-60,-1.6,-60,13,-28.2,0,0),0);
         widths[88] = 40;
         font[89] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2),new Array(10,0,30,0,30,-30,40,-60,30,-60,25,-43.8,20,-60,-0.01,-60,10,-30,10,0),0);
         widths[89] = 40;
         font[90] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2),new Array(0,0,40,0,40,-10,20,-10,40,-44.6,40,-60,0,-60,0,-50,20,-50,0,-14.8,0,0),0);
         widths[90] = 40;
      }
      
      public static function createFont2() : void
      {
         font = new Vector.<nl.jorisdormans.phantomGraphics.PhantomShape>();
         widths = new Vector.<Number>();
         var _loc1_:int = 0;
         while(_loc1_ < 128)
         {
            widths.push(0);
            font.push(null);
            _loc1_++;
         }
         widths[32] = 15;
         characterHeight = 50;
         characterSpacing = 5 / 50;
         lineHeight = 1.25;
         font[48] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,1,3,3,3,3),new Array(0,-20,0,0.6,16.5,0.6,33,0.6,33,-25.94,33,-51,16.94,-51,0,-51,0,-20,11,-20,11,-40,16.72,-40,22,-40,22,-27.48,22,-9,16.5,-9,11,-9,11,-20),0);
         widths[48] = 30;
         font[49] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,2,2,2,3,2),new Array(13,0,23,0,23,-40,25.6,-50,14.8,-50,5.4,-36.4,14.2,-36.6,13,-30,13,-10,13,0),0);
         widths[49] = 30;
         font[50] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,3,3,3,2,3,3,3,2),new Array(0,0,30,0,30,-10,16,-10,30,-22.6,30,-36,30,-50,18,-50,2.6,-50,3.4,-30,12.4,-30,11.6,-40,16.6,-40,20,-40,20,-34.2,20,-25.6,0,-10,0,0),0);
         widths[50] = 30;
         font[51] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3,2,3,3,3,2,3,3,3,2),new Array(0,-15.4,0,0.2,15,0.4,30,0.6,30,-13,30,-24.6,25,-27,30,-29.8,30,-35.4,30,-50.6,16.5,-51.1,3,-51.6,4,-37.6,13,-36.8,12.8,-42.21,15.8,-42.1,20,-42,20,-36.8,20,-30.6,10,-31.6,10,-22.8,20,-23,20,-16.5,20,-10,15,-10,10,-10,10,-15.4,0,-15.4),0);
         widths[51] = 30;
         font[52] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,3,2,2,2,1,2,3,2),new Array(17.2,0,27.2,0,27.2,-13.4,30.6,-13.4,30.6,-23.4,27.2,-23.4,27.2,-50,17.2,-50,4.4,-37.4,1,-23.4,1,-13.4,17.2,-13.4,17.2,0,17.2,-23.4,17.2,-35.6,11.8,-30,10.8,-23.4,17.2,-23.4),0);
         widths[52] = 30;
         font[53] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,2,3,3,3,2,3,3,3,2,2,2,2,2),new Array(3.2,-50,0.4,-37.8,0.01,-23.4,11.4,-23.2,21.8,-23.4,20.9,-16.7,20,-10,15.8,-10,10.2,-10,9.8,-16,0,-16,0,0,13.2,0,30,0,30,-17.2,30,-30,21.4,-32,11.6,-32.4,12,-40,28.4,-40,27,-50,3.2,-50),0);
         widths[53] = 30;
         font[54] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,2,3,2,2,2,3,1,3,3,3,3),new Array(0,-20,0,1.2,15.8,1.2,30,1.2,30,-16.2,30,-30,15.6,-30,11.6,-30,13.4,-40,20,-40,24.8,-40,25,-50,20,-50,0,-50,0,-20,11.6,-22.4,21.2,-21.6,21.7,-14.5,22.2,-7.4,16.1,-8.1,10,-8.8,10,-14.2,10,-18.4,11.6,-22.4),0);
         widths[54] = 30;
         font[55] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,2,2,2,2,3,2),new Array(10,0,10,-30,17.6,-40,2.8,-40,2.8,-50,30,-50,30,-40,21.6,-30,21.6,0,10,0),0);
         widths[55] = 30;
         font[56] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3,3,3,1,3,3,2,1,3,3,3,3,2),new Array(5.6,-30,2,-34.4,2,-40,2.4,-51.4,15.59,-51.4,28.19,-51.4,27.39,-40,27.79,-34.02,24.39,-30,30,-25.6,30,-15.3,30,1.6,15.59,1.2,0,1.2,0,-16,0,-25.2,5.6,-30,13.4,-32.6,8.8,-41.6,15.4,-41.6,21.8,-41.6,17.8,-32.6,13.4,-32.6,17.6,-24.2,21.2,-21.8,20,-16.4,20,-10,15,-10,10,-10,10,-15,10,-21.4,13.2,-24.2,17.6,-24.2),0);
         widths[56] = 30;
         font[57] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,2,3,2,2,2,3,1,3,3,3,3),new Array(30,-30,30,-51.2,14.2,-51.2,-0.01,-51.2,0,-36.2,-0.01,-20,14.4,-20,20,-20,17.2,-10,10,-10,3,-10,3.4,0,7.6,0,30,0,30,-30,17.4,-28.8,8.8,-28.4,8.3,-35.5,7.8,-42.6,13.9,-41.9,20,-41.2,20,-35.8,20,-30,17.2,-28.8),0);
         widths[56] = 30;
         font[65] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,2,2,2,2,2,2,1,3,3,2),new Array(0,0,0,-20,0,-50,23,-50,30,-43.2,30,-20,30,0,20,0,20,-10,10,-10,10,0,0,0,10,-20,10,-38.23,17.4,-40,20,-36.6,20,-20,10,-20),0);
         widths[65] = 30;
         font[66] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,3,3,2,3,2,1,3,3,2,1,3,3,3),new Array(0,0,10,0,30,0,30,-15.2,30,-24.2,23.4,-30,30,-38,24.3,-44,18.6,-50,10,-50,3.6,-50,0,-45.2,0,-20,0,0,10,-10,20,-10,20,-15.2,20,-24.4,10,-24,10,-10,10,-31.8,18.2,-31.4,18,-36.4,18.6,-42.6,12,-42,10,-41.8,10,-31.6),0);
         widths[66] = 30;
         font[67] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,3,3,3,3,2,3,3),new Array(0,-20,0,0,15,0,30,0,30,-20,20,-20,20,-10,15,-10,10,-10,10,-20,10,-40,16.2,-40,20,-40,20,-32.8,30,-32.8,30,-50,15.4,-50,0,-50,0,-20),0);
         widths[67] = 30;
         font[68] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,2,3,2,1,3,3,3,2),new Array(0,0,10,0,30,0,30,-20,30,-50,10,-50,3.6,-50,0,-45.2,0,-20,0,0,10,-10,20,-10,20,-20,20,-38.4,11.4,-40,10,-35.4,10,-25.4,10,-10),0);
         widths[68] = 30;
         font[69] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,3,2,2,2,2,3,2),new Array(0,0,30,0,30,-10,10,-10,10,-17.4,20,-17.4,20,-27.4,10,-27.4,10,-36,11.4,-40,26.8,-40,26.8,-50,10,-50,3.6,-50,0,-45.2,0,-20,0,0),0);
         widths[69] = 30;
         font[70] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,3,2,2,2,2,3,2),new Array(0,0,10,0,10,-21.8,20,-21.8,20,-31.8,10,-31.8,10,-36,11.4,-40,26.8,-40,26.8,-50,10,-50,3.6,-50,0,-45.2,0,-20,0,0),0);
         widths[70] = 24;
         font[71] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,2,2,2,3,3,3,3,2,3,3),new Array(0,-20,0,0,15,0,30,0,30,-20,30,-27.6,15.2,-27.6,15.2,-18.6,20,-18.6,20,-10,15,-10,10,-10,10,-20,10,-40,16.2,-40,20,-40,20,-34,30,-34,30,-50,15.4,-50,0,-50,0,-20),0);
         widths[71] = 30;
         font[72] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,3,2,3,2),new Array(0,0,10,0,10,-14.8,20,-14.8,20,0,30,0,30,-50,20,-50,20,-24.8,10,-24.8,10,-45,12.4,-50,3.6,-50,0,-45.2,0,-20,0,0),0);
         widths[72] = 30;
         font[73] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,3,2,2),new Array(0,0,20,0,20,-10,15,-10,15,-40,20,-40,20,-50,1.4,-50,1.4,-40,6,-40,5,-25,5,-10,0,-10,0,0),0);
         widths[73] = 20;
         font[74] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,2,2,2,3,3,3,2),new Array(0,-20,0,0,15.2,0,30,0,30,-20,30,-40,33,-50,12,-50,10,-40,21.4,-40,20,-30,20,-20,20,-10,15.2,-10,10,-10,10,-20,0,-20),0);
         widths[74] = 30;
         font[75] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,3,2,3,2),new Array(0,0,10,0,10,-11.8,12.4,-16,22,0,35,0,17.4,-23,34.8,-50,23.8,-50,10,-27.6,10,-40,12.4,-50,3,-50,0,-40,0,-20,0,0),0);
         widths[75] = 35;
         font[76] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,3,2,3,2),new Array(0,0,30,0,28.4,-10,10,-10,10,-20,10,-40,12.4,-50,3,-50,0,-40,0,-20,0,0),0);
         widths[76] = 30;
         font[77] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,3,2),new Array(0,0,10,0,10,-30,17.2,-10,22.8,-10,30,-30,30,0,40,0,40,-50,27.8,-50,20,-30,12.4,-50,3,-50,0,-40,0,-20,0,0),0);
         widths[77] = 40;
         font[78] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,3,2),new Array(0,0,10,0,10,-35.2,24,-10,24,0,34,0,34,-50,24,-50,24,-30,12.4,-50,3,-50,0,-40,0,-20,0,0),0);
         widths[78] = 34;
         font[79] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,1,3,3,3,3),new Array(0,-20,0,0.6,16.5,0.6,33,0.6,33,-25.94,33,-51,16.94,-51,0,-51,0,-20,11,-20,11,-40,16.72,-40,22,-40,22,-27.48,22,-9,16.5,-9,11,-9,11,-20),0);
         widths[79] = 33;
         font[80] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2,3,2,1,3,3,3),new Array(0,0,10,0,10,-17.2,30,-15.6,30,-30,30,-50,10,-50,3.6,-50,0,-45.2,0,-20,0,0,10,-25.6,21.8,-24.6,21.8,-34.6,21.8,-41.4,12,-42,10,-41.8,10,-25.6),0);
         widths[80] = 28;
         font[81] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,2,2,2,3,3,3,1,3,3,3,2,3),new Array(0,-20,0,2,20,0,30,5.8,35.2,-4.6,27.8,-8,33,-14.8,33,-25.94,33,-51.4,16.94,-51.4,0,-51.4,0,-20,11,-20,11,-40,16.72,-40,23.2,-40,23,-27.28,22.6,-18.4,20,-12.8,15.2,-15,10,-5.8,11,-20),0);
         widths[81] = 33;
         font[82] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,3,3,2,3,2,1,3,3,3),new Array(0,0,10,0,10,-18.8,14.6,-18.8,20,0,30,0,23.4,-20,30,-22,30,-33.8,30,-50,10,-50,3.6,-50,0,-45.2,0,-20,0,0,10,-28.8,22.2,-27.6,21.8,-34.6,21.8,-41.4,12,-42,10,-41.8,10,-28.6),0);
         widths[82] = 30;
         font[83] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,2,3,3,3,3,3,2),new Array(0,-16,0,0.72,16.5,0.72,33,0.72,33,-13.58,33,-27,23.87,-31.07,14.74,-35.14,14.52,-39.21,14.08,-44.82,26.07,-39.54,30.14,-49,11.4,-55,6.36,-43.66,1.32,-32.72,14.74,-26.78,25.08,-21.28,24.64,-16.22,25.3,-8.49,17.16,-8.49,9.02,-8.49,10,-22.61,0,-16),0);
         widths[83] = 32;
         font[84] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,3,2),new Array(7.8,0,17.8,0,17.8,-40,27.8,-40,27.8,-50,0.2,-50,0,-40,8.8,-40,7.8,-25,7.8,-10,7.8,0),0);
         widths[84] = 29;
         font[85] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,2,2,3,3,3,2,3),new Array(0,-20,0,0,14.8,0,30,0,30,-20,30,-50,20,-50,20,-20,20,-10,15.4,-10,10,-10,10,-20,10,-40,13,-50,2.4,-50,0,-40,0,-20),0);
         widths[85] = 30;
         font[86] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,2,2,3,3,3,2,3),new Array(0,-30,0,-20,15.2,0,30,-20,30,-30,30,-50,20,-50,20,-30,20,-24.2,15.4,-16.8,10,-23.4,10,-30,10,-40,12,-50,1.4,-50,0,-40,0,-30),0);
         widths[86] = 30;
         font[87] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2,2,2,3,3,2,3,3,3,2,3),new Array(0,-20,0,-10,10,0.01,16.4,-5,20,-8.4,23.4,-5.1,30,0.01,40,-10,40,-30,40,-50,30,-50,30,-30,30,-18.6,26.6,-13.6,23.2,-20,23.8,-30,17.6,-30,17.4,-20,12.8,-13.2,10,-20,10,-30,10,-40,12.8,-50,2.2,-50,0,-40,0,-20),0);
         widths[87] = 38;
         font[88] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,3,2,3,2),new Array(0,0,12,0,20,-14.4,28.6,0,40,0,26.6,-23.8,40,-50,28.6,-50,20,-33.6,15.9,-42,16.6,-50,5,-50,6.6,-38,13.8,-24.2,0,0),0);
         widths[88] = 38;
         font[89] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,2,2,2,3,2,3,3),new Array(4.8,0,16.6,0,16,-13.5,20.01,-23.8,33.4,-50.01,22.01,-50.01,13.2,-32.4,9.31,-42.01,10.01,-50.01,-1.59,-50.01,0.01,-38.01,8.81,-23.6,4.8,-12,4.8,-3.6),0);
         widths[89] = 30;
         font[90] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,3,2,2,2,2,3,2),new Array(0,0,31.4,0,31.4,-10,14.4,-10,28,-28,30,-40,31.2,-50,5,-50,4.2,-40,17.2,-40,14.8,-28,1.2,-10,0,0),0);
         widths[90] = 31;
      }
      
      public static function createFont3() : void
      {
         font = new Vector.<nl.jorisdormans.phantomGraphics.PhantomShape>();
         widths = new Vector.<Number>();
         var _loc1_:int = 0;
         while(_loc1_ < 128)
         {
            widths.push(0);
            font.push(null);
            _loc1_++;
         }
         widths[32] = 15;
         characterHeight = 70;
         characterSpacing = 10 / 70;
         lineHeight = 1.25;
         font[65] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,3,3,2,1,2,2,2,2),new Array(0,0,20,0,20,-30,30,-30,30,0,40,0,40,-70.02,10,-70.02,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0,20,-40,30,-40,30,-60.01,20,-60.01,20,-40),0);
         widths[65] = 40;
         font[66] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2,2,2,1,2,3,2,2,1,2,2,2,2),new Array(0,0,40,0,40,-20,40,-30,35,-40,30,-50,30,-60,30,-70,0,-70,0,0,10,-10,25.11,-10,25.11,-24.87,20,-30,10,-30,10,-10,10,-40,20,-40,20,-60,10,-60,10,-40),0);
         widths[66] = 40;
         font[67] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,40,0,40,-20,30,-20,30,-10,20,-10,20,-60,30,-60,30,-50,40,-50,40,-70.02,10,-70.02,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[67] = 40;
         font[68] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,2,2,1,2,3,2,2,2),new Array(0,0,40,0,40,-50,40,-60,35,-70.02,0,-70,0,0,25.13,-10,25.11,-40,25.11,-54.88,20,-60,10,-60,10,-10,25.33,-10),0);
         widths[68] = 40;
         font[69] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,40,0,40,-10,20,-10,20,-30,30,-30,30,-40,20,-40,20,-60,40,-60,40,-70.02,10,-70.02,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[69] = 40;
         font[70] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,20,0,20,-30,30,-30,30,-40,20,-40,20,-60,40,-60,40,-70.02,10,-70.02,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[70] = 40;
         font[71] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,40,0,40,-40,25.76,-40,25.87,-30,30,-30,30,-10,20,-10,20,-60,30,-60,30,-50,40,-50,40,-70.02,10,-70.02,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[71] = 40;
         font[72] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,10,0,20,0,20,-30,30,-30,30,0,40,0,40,-70,30,-70,30,-40,20,-40,20,-70,10,-70.02,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[72] = 40;
         font[73] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,3,3,2),new Array(0,0,20,0,20,-70,0,-70,0,-60,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[73] = 20;
         font[74] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(40,0,0,0,0,-20,10,-20,10,-10,20,-10,20,-60,0,-60,0,-70,30,-70,30,-60.01,30,-50,35,-40,40,-30,40,-20,40,0),0);
         widths[74] = 40;
         font[75] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,20,0,20,-35.25,37,0,50,0,30,-40,50,-70,37.67,-70,20,-45.51,20,-70,10,-70,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[75] = 50;
         font[76] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,3,3,2),new Array(0,0,40,0,40,-10,20,-10,20,-70,10,-70,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[76] = 40;
         font[77] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,20,0,20,-50,30,-30,40,-50,40,0,50,0,50,-70,40,-70,30,-50,20,-70,10,-70,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[77] = 50;
         font[78] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2,2,3,3,2),new Array(0,0,20,0,20,-50,30,-30,30,0,40,0,40,-70,30,-70,30,-50,20,-70,10,-70,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0),0);
         widths[78] = 40;
         font[79] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,2,2,3,2,1,2,3,2,2,3,2),new Array(20,0,40,0,40,-50,40,-60,34.24,-70,0,-70,0,-20,0,-10,6.82,0,20,0,30,-10,30,-45.63,30,-55.58,25.01,-60,10,-60,10,-25.34,10,-14.91,13.81,-10,30,-10),0);
         widths[79] = 40;
         font[80] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,3,3,2,1,2,2,2,2),new Array(0,0,20,0,20,-30,40,-30,40,-70,10,-70,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0,20,-40,30,-40,30,-60,20,-60,20,-40),0);
         widths[80] = 40;
         font[81] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,3,2,2,3,2,1,2,2,2,2,3,2,2,3,2),new Array(20,0,40,0,40,-4.35,50,0,50,-10,40,-14.7,40,-50,40,-60,34.24,-70,0,-70,0,-20,0,-10,6.82,0,20,0,26.81,-10,20,-13.62,20,-22.33,30,-17.89,30,-45.63,30,-55.58,25.01,-60,10,-60,10,-25.34,10,-14.91,13.81,-10,26.94,-10),0);
         widths[81] = 43;
         font[82] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,3,3,2,1,2,2,2,2),new Array(0,0,20,0,20,-30,33.09,0,43.89,0,31.2,-30,40,-30,40,-70,10,-70,10,-60.01,10,-50,5,-40,0,-30,0,-20,0,0,20,-40,30,-40,30,-60,20,-60,20,-40),0);
         widths[82] = 40;
      }
      
      public static function createFont4() : void
      {
         font = new Vector.<nl.jorisdormans.phantomGraphics.PhantomShape>();
         widths = new Vector.<Number>();
         var _loc1_:int = 0;
         while(_loc1_ < 128)
         {
            widths.push(0);
            font.push(null);
            _loc1_++;
         }
         widths[32] = 20;
         characterHeight = 60;
         characterSpacing = 20 / 60;
         lineHeight = 1.7;
         font[33] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,0,0,-3.4,0,-20,0,-60),0);
         widths[33] = 0;
         font[34] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,1,2,1,2),new Array(0,0,0,-50,0,-60,20,-60,20,-50),0);
         widths[34] = 20;
         font[35] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2,1,2),new Array(10,0,10,-60,30,-60,30,0,0,-40,40,-40,40,-20,0,-20),0);
         widths[35] = 40;
         font[36] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3,1,2),new Array(0,-10,5,0.01,20,0.01,40,0.01,40,-15,40,-30,20,-30,0,-30,0,-45,0,-60,20,-60,35,-60,40,-50,20,-63,20,3.4),0);
         widths[36] = 40;
         font[37] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3,1,3,3,3,3),new Array(0,0,40,-60,10,-40,0,-40,0,-50,0,-60,10,-60,20,-60,20,-50,20,-40,10,-40,20,-10,20,0,30,0,40,0,40,-10,40,-20.01,30,-20.01,20,-20.01,20,-10),0);
         widths[37] = 40;
         font[38] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3,3,3),new Array(40,0,40,0,22.5,-20,5,-40.01,5,-50.01,5,-60.01,17.5,-60.01,30,-60.01,30,-50.01,30,-40.01,15,-32.4,0,-24.8,0,-10,0,0,15.2,0,30,0,40,-20),0);
         widths[38] = 40;
         font[39] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,-50,0,-60),0);
         widths[39] = 0;
         font[40] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3),new Array(10,0,0,-10,0,-30,0,-50,10,-60),0);
         widths[40] = 10;
         font[41] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3),new Array(0,0,10,-10,10,-30,10,-50,0,-60),0);
         widths[41] = 10;
         font[42] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2),new Array(6.79,-13.51,15.57,-26.82,1.47,-36.4,17.17,-32.94,20.1,-49.71,22.75,-32.94,38.2,-36.4,24.09,-26.82,33.41,-13.51,20.1,-22.56,6.78,-13.51),0);
         widths[42] = 40;
         font[43] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(15,-10,15,-50,0,-30,30,-30),0);
         widths[43] = 30;
         font[44] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,-10,10),0);
         widths[44] = 5;
         font[45] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,-30,30,-30),0);
         widths[45] = 30;
         font[46] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(0,0,0,-5,3,-5,3,0),0);
         widths[46] = 5;
         font[47] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,30,-60),0);
         widths[47] = 30;
         font[58] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,1,2,2,2),new Array(0,0,0,-5,3,-5,3,0,0,-40,0,-35,3,-35,3,-40),0);
         widths[58] = 5;
         font[59] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,2,2),new Array(0,0,-10,10,0,-40,0,-35,3,-35,3,-40),0);
         widths[59] = 5;
         font[60] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(30,0,0,-20,30,-40),0);
         widths[60] = 30;
         font[61] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,-10,30,-10,30,-30,0,-30),0);
         widths[61] = 30;
         font[62] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(0,0,30,-20,0,-40),0);
         widths[62] = 30;
         font[63] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(15,0,15,-5,15,-20,15,-30,22.8,-35,30.6,-40,30,-50,30,-60,15,-60,0,-60,0,-45),0);
         widths[63] = 30;
         font[64] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,3,2,2,3,3,3,3),new Array(30,-20,30,-40,27.4,-44.6,22.6,-44.41,14.4,-44.61,14.5,-30.31,14.6,-16,26.6,-15.6,43.27,-20,43.19,-30,40,-60,20,-60,0,-60,0,-30,0,0,20,0,30,0,37.06,-1.81),0);
         widths[64] = 40;
         font[91] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(20,0,0,0,0,-60,20,-60),0);
         widths[91] = 20;
         font[92] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(30,0,0,-60),0);
         widths[92] = 30;
         font[93] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(0,0,20,0,20,-60,0,-60),0);
         widths[93] = 20;
         font[94] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(0,-50,10,-60,20,-50),0);
         widths[94] = 20;
         font[95] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,30,0),0);
         widths[95] = 30;
         font[96] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(10,-50,0,-60),0);
         widths[96] = 5;
         font[48] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(0,-30,0,0.01,15,0.01,30,0.01,30,-30,30,-60,15,-60,0,-60,0,-30),0);
         widths[48] = 30;
         font[49] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,2),new Array(5,0,25,0,15,0,15,-60,5,-50),0);
         widths[49] = 30;
         font[50] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,3),new Array(30,0,0,0,20,-25.4,30,-37.4,30,-48.7,30,-60,15.4,-60,5.4,-60,0,-50),0);
         widths[50] = 30;
         font[51] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3),new Array(0,-10,5,-0.01,14,-0.01,30,-0.01,30,-15,30,-30,20,-30,30,-30,30,-45,30,-60,14.4,-60,5,-60,0,-50),0);
         widths[51] = 30;
         font[52] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(25,0,25,-60,0,-20,30,-20),0);
         widths[52] = 30;
         font[53] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,2,2,2),new Array(0,-10,2,0.01,15,0.01,30,0.01,30,-15,30,-30,15,-30,0,-30,0,-60,27.2,-60),0);
         widths[53] = 30;
         font[54] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2,3,3),new Array(0,-24.6,5,-34.6,15,-34.6,30,-34.6,30,-17.1,30,0.4,15,0.4,0,0.4,0,-14.6,0,-39.6,0,-59.6,15,-59.6,25,-59.6,26,-57),0);
         widths[54] = 30;
         font[55] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(15,0,30,-60,0,-60),0);
         widths[55] = 30;
         font[56] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,3,3,3,3,2,3,3),new Array(15,0,30,0,30,-17.5,30,-35.01,20,-35,10,-35,2,-35,2,-47.5,2,-60,15.4,-60,28,-60,28,-47.51,28,-35.01,20,-35.01,10,-35.01,0,-35,0,-17.5,0,0,15,0),0);
         widths[56] = 30;
         font[57] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2,3,3),new Array(30,-35,25,-25,15,-25,0,-25,0,-42.5,0,-60,15,-60,30,-60,30,-45,30,-20,30,0,15,0,5,0,4,-2.6),0);
         widths[57] = 30;
         font[65] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(0,0,20,-60,40,0,32.8,-20,6.8,-20),0);
         widths[65] = 40;
         font[66] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2,2,3,3,2),new Array(0,0,0,-60,14.4,-60,34.4,-60,34.4,-45.8,34.4,-30,18.8,-30,0,-30,24.4,-30,40,-30,40,-15,40,0,20,0,0,0),0);
         widths[66] = 40;
         font[67] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(40,-10,34.6,0,20,0,0,0,0,-30,0,-60,20,-60,34.4,-60,40,-50),0);
         widths[67] = 40;
         font[68] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2),new Array(0,0,0,-60,10,-60,40,-60,40,-30,40,0,10,0,0,0),0);
         widths[68] = 40;
         font[69] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,1,2),new Array(40,0,0,0,0,-60,40,-60,0,-30,40,-30),0);
         widths[69] = 40;
         font[70] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(0,0,0,-60,40,-60,0,-30,30,-30),0);
         widths[70] = 40;
         font[71] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,3,3),new Array(20,-30,40,-30,40,-5,31.6,0,20.01,0,0,0,0,-30,0,-60,20.01,-60,34.61,-60,40,-50),0);
         widths[71] = 40;
         font[72] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,0,-60,0,-30,40,-30,40,-60,40,0),0);
         widths[72] = 40;
         font[73] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,20,0,10,0,10,-60,0,-60,20,-60),0);
         widths[73] = 20;
         font[74] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,2),new Array(0,-10,5.2,0,20,0,40,0,40,-30,40,-60,10,-60),0);
         widths[74] = 40;
         font[75] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,0,-60,0,-20,40,-60,10,-30,40,0),0);
         widths[75] = 40;
         font[76] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(40,0,0,0,0,-60),0);
         widths[76] = 40;
         font[77] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,0,0,-60,25,-20,50,-60,50,0),0);
         widths[77] = 50;
         font[78] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(0,0,0,-60,40,-20,40,-60,40,0),0);
         widths[78] = 40;
         font[79] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(0,-30,0,-60,20,-60,40,-60,40,-30,40,0,20,0,0,0,0,-30),0);
         widths[79] = 40;
         font[80] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2),new Array(0,0,0,-60,20,-60,40,-60,40,-45,40,-30,20,-30,0,-30),0);
         widths[80] = 40;
         font[81] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,1,2),new Array(0,-30,0,-60,20,-60,40,-60,40,-30,40,0,20,0,0,0,0,-30,20,-20,40,0),0);
         widths[81] = 40;
         font[82] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2,1,2),new Array(0,0,0,-60,14.4,-60,34.4,-60,34.4,-45.8,34.4,-30,18.8,-30,0,-30,18.8,-30,40,0),0);
         widths[82] = 40;
         font[83] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3),new Array(0,-10,5,0.01,20,0.01,40,0.01,40,-15,40,-30,20,-30,0,-30,0,-45,0,-60,20,-60,35,-60,40,-50),0);
         widths[83] = 40;
         font[84] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(20,0,20,-60,0,-60,40,-60),0);
         widths[84] = 40;
         font[85] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,1,2),new Array(0,-30,0,0,20,0,40,0,40,-30,40,-60,0,-60,0,-30),0);
         widths[85] = 40;
         font[86] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(20,0,40,-60,0,-60,20,0),0);
         widths[86] = 40;
         font[87] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,-60,13.6,0,25,-40,36.4,0,50,-60),0);
         widths[87] = 50;
         font[88] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,0,40,-60,0,-60,40,0),0);
         widths[88] = 40;
         font[89] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(20,0,20,-30,40,-60,0,-60,20,-30),0);
         widths[89] = 40;
         font[90] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(40,0,0,0,40,-60,0,-60),0);
         widths[90] = 40;
         font[97] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,1,3,3,3,3),new Array(30,0,30,-20,30,-40,15,-40,5.7,-40,3,-36.8,30,-5.6,23.5,0,15,0,0,0,0,-12.2,0,-24.4,14,-24.4,23.8,-24.4,30,-20),0);
         widths[97] = 30;
         font[98] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(0,0,0,-60,0,-10,5,0,14.4,0,30,0,30,-20,30,-40,14,-40,5,-40,0,-30),0);
         widths[98] = 30;
         font[99] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(30,-10,25,0,15,0,0,0,0,-20,0,-40,15,-40,25,-40,30,-30),0);
         widths[99] = 30;
         font[100] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(30,0,30,-60,30,-10,25,0,15.6,0,0,0,0,-20,0,-40,16,-40,25,-40,30,-30),0);
         widths[100] = 30;
         font[101] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2),new Array(30,-10,25,0,15,0,0,0,0,-20,0,-40,15,-40,30,-40,30,-20,0,-20),0);
         widths[101] = 30;
         font[102] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,1,2),new Array(0,0,0,-40,0,-60,20,-60,0,-30,10,-30),0);
         widths[102] = 15;
         font[103] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,1,3,3,3,3),new Array(0,10,5,20,15,20,30,20,30,0,30,-40,30,-30,25,-40,15,-40,0,-40,0,-20,0,0,15,0,25,0,30,-10),0);
         widths[103] = 30;
         font[104] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,2),new Array(0,0,0,-60,0,-30,5,-40,15,-40,30,-40,30,-20,30,0),0);
         widths[104] = 30;
         font[105] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,0,0,-40,0,-57.8,0,-60),0);
         widths[105] = 0;
         font[106] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,2,1,2),new Array(-10,20,10,20,10,0,10,-40,10,-57.2,10,-60),0);
         widths[106] = 10;
         font[107] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,0,-60,0,-10,30,-40,10,-20,30,0),0);
         widths[107] = 30;
         font[108] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,0,-60),0);
         widths[108] = 0;
         font[109] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,2,1,3,3,2),new Array(0,0,0,-40,0,-30,4.2,-40,10,-40,20,-40,20,-20,20,0,20,-20,20,-40,30,-40,40,-40,40,-20,40,0),0);
         widths[109] = 40;
         font[110] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,2),new Array(0,0,0,-40,0,-30,5,-40,15,-40,30,-40,30,-20,30,0),0);
         widths[110] = 30;
         font[111] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(0,-20,0,0.01,15,0.01,30,0.01,30,-20,30,-40,15,-40,0,-40,0,-20),0);
         widths[111] = 30;
         font[112] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(0,20,0,-40,0,-30,5,-40,15,-40,30,-40,30,-20,30,0,15,0,5,0,0,-10),0);
         widths[112] = 30;
         font[113] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(30,20,30,-40,30,-30,25,-40,15,-40,-0.01,-40,-0.01,-20,-0.01,0,15,0,25,0,30,-10),0);
         widths[113] = 30;
         font[114] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3),new Array(0,0,0,-40,0,-30,2.8,-40,20,-40),0);
         widths[114] = 20;
         font[115] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3),new Array(0,-10,4.4,0,15,0,30,0,30,-11.5,30,-23,16.2,-23,3,-23,3,-31.5,3,-40,15.4,-40,23,-40,26.4,-36.8),0);
         widths[115] = 30;
         font[116] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,1,2),new Array(30,-10,24.6,0,15,0,0,0,0,-20.01,0,-50,-5,-40,20,-40),0);
         widths[116] = 30;
         font[117] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,2),new Array(0,-40,0,-20,0,0,15,0,30,0,30,-20,30,-40),0);
         widths[117] = 30;
         font[118] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(0,-40,15,0,30,-40),0);
         widths[118] = 30;
         font[119] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,-40,10,0,20,-30,30,0,40,-40),0);
         widths[119] = 40;
         font[120] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,-40,30,0,30,-40,0,0),0);
         widths[120] = 30;
         font[121] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,20,30,-40,0,-40,15,-10),0);
         widths[121] = 30;
         font[122] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(30,0,0,0,30,-40,0,-40),0);
         widths[122] = 30;
      }
      
      public static function createFont5() : void
      {
         font = new Vector.<nl.jorisdormans.phantomGraphics.PhantomShape>();
         widths = new Vector.<Number>();
         var _loc1_:int = 0;
         while(_loc1_ < 128)
         {
            widths.push(0);
            font.push(null);
            _loc1_++;
         }
         widths[32] = 20;
         characterHeight = 60;
         characterSpacing = 20 / 60;
         lineHeight = 1.7;
         font[33] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,0,0,-3.4,0,-20,0,-60),0);
         widths[33] = 0;
         font[34] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,1,2,1,2),new Array(0,0,0,-50,0,-60,20,-60,20,-50),0);
         widths[34] = 20;
         font[35] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2,1,2),new Array(10,0,10,-60,30,-60,30,0,0,-40,40,-40,40,-20,0,-20),0);
         widths[35] = 40;
         font[36] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3,1,2),new Array(0,-10,5,0.01,20,0.01,40,0.01,40,-15,40,-30,20,-30,0,-30,0,-45,0,-60,20,-60,35,-60,40,-50,20,-63,20,3.4),0);
         widths[36] = 40;
         font[37] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3,1,3,3,3,3),new Array(0,0,40,-60,10,-40,0,-40,0,-50,0,-60,10,-60,20,-60,20,-50,20,-40,10,-40,20,-10,20,0,30,0,40,0,40,-10,40,-20.01,30,-20.01,20,-20.01,20,-10),0);
         widths[37] = 40;
         font[38] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3,3,3),new Array(40,0,40,0,22.5,-20,5,-40.01,5,-50.01,5,-60.01,17.5,-60.01,30,-60.01,30,-50.01,30,-40.01,15,-32.4,0,-24.8,0,-10,0,0,15.2,0,30,0,40,-20),0);
         widths[38] = 40;
         font[39] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,-50,0,-60),0);
         widths[39] = 0;
         font[40] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3),new Array(10,0,0,-10,0,-30,0,-50,10,-60),0);
         widths[40] = 10;
         font[41] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3),new Array(0,0,10,-10,10,-30,10,-50,0,-60),0);
         widths[41] = 10;
         font[42] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2,2,2,2,2,2,2),new Array(6.79,-13.51,15.57,-26.82,1.47,-36.4,17.17,-32.94,20.1,-49.71,22.75,-32.94,38.2,-36.4,24.09,-26.82,33.41,-13.51,20.1,-22.56,6.78,-13.51),0);
         widths[42] = 40;
         font[43] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(15,-10,15,-50,0,-30,30,-30),0);
         widths[43] = 30;
         font[44] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,-10,10),0);
         widths[44] = 5;
         font[45] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,-30,30,-30),0);
         widths[45] = 30;
         font[46] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(0,0,0,-5,3,-5,3,0),0);
         widths[46] = 5;
         font[47] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,30,-60),0);
         widths[47] = 30;
         font[58] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,1,2,2,2),new Array(0,0,0,-5,3,-5,3,0,0,-40,0,-35,3,-35,3,-40),0);
         widths[58] = 5;
         font[59] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,2,2),new Array(0,0,-10,10,0,-40,0,-35,3,-35,3,-40),0);
         widths[59] = 5;
         font[60] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(30,0,0,-20,30,-40),0);
         widths[60] = 30;
         font[61] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,-10,30,-10,30,-30,0,-30),0);
         widths[61] = 30;
         font[62] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(0,0,30,-20,0,-40),0);
         widths[62] = 30;
         font[63] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(15,0,15,-5,15,-20,15,-30,22.8,-35,30.6,-40,30,-50,30,-60,15,-60,0,-60,0,-45),0);
         widths[63] = 30;
         font[64] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,3,2,2,3,3,3,3),new Array(30,-20,30,-40,27.4,-44.6,22.6,-44.41,14.4,-44.61,14.5,-30.31,14.6,-16,26.6,-15.6,43.27,-20,43.19,-30,40,-60,20,-60,0,-60,0,-30,0,0,20,0,30,0,37.06,-1.81),0);
         widths[64] = 40;
         font[91] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(20,0,0,0,0,-60,20,-60),0);
         widths[91] = 20;
         font[92] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(30,0,0,-60),0);
         widths[92] = 30;
         font[93] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(0,0,20,0,20,-60,0,-60),0);
         widths[93] = 20;
         font[94] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(0,-50,10,-60,20,-50),0);
         widths[94] = 20;
         font[95] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,30,0),0);
         widths[95] = 30;
         font[96] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(10,-50,0,-60),0);
         widths[96] = 5;
         font[48] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(0,-30,0,0.01,15,0.01,30,0.01,30,-30,30,-60,15,-60,0,-60,0,-30),0);
         widths[48] = 30;
         font[49] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,2),new Array(5,0,25,0,15,0,15,-60,5,-50),0);
         widths[49] = 30;
         font[50] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,3),new Array(30,0,0,0,20,-25.4,30,-37.4,30,-48.7,30,-60,15.4,-60,5.4,-60,0,-50),0);
         widths[50] = 30;
         font[51] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3),new Array(0,-10,5,-0.01,14,-0.01,30,-0.01,30,-15,30,-30,20,-30,30,-30,30,-45,30,-60,14.4,-60,5,-60,0,-50),0);
         widths[51] = 30;
         font[52] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(25,0,25,-60,0,-20,30,-20),0);
         widths[52] = 30;
         font[53] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,2,2,2),new Array(0,-10,2,0.01,15,0.01,30,0.01,30,-15,30,-30,15,-30,0,-30,0,-60,27.2,-60),0);
         widths[53] = 30;
         font[54] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2,3,3),new Array(0,-24.6,5,-34.6,15,-34.6,30,-34.6,30,-17.1,30,0.4,15,0.4,0,0.4,0,-14.6,0,-39.6,0,-59.6,15,-59.6,25,-59.6,26,-57),0);
         widths[54] = 30;
         font[55] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(15,0,30,-60,0,-60),0);
         widths[55] = 30;
         font[56] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,3,3,3,3,2,3,3),new Array(15,0,30,0,30,-17.5,30,-35.01,20,-35,10,-35,2,-35,2,-47.5,2,-60,15.4,-60,28,-60,28,-47.51,28,-35.01,20,-35.01,10,-35.01,0,-35,0,-17.5,0,0,15,0),0);
         widths[56] = 30;
         font[57] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2,3,3),new Array(30,-35,25,-25,15,-25,0,-25,0,-42.5,0,-60,15,-60,30,-60,30,-45,30,-20,30,0,15,0,5,0,4,-2.6),0);
         widths[57] = 30;
         font[65] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(0,0,20,-60,40,0,32.8,-20,6.8,-20),0);
         widths[65] = 40;
         font[66] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2,2,3,3,2),new Array(0,0,0,-60,14.4,-60,34.4,-60,34.4,-45.8,34.4,-30,18.8,-30,0,-30,24.4,-30,40,-30,40,-15,40,0,20,0,0,0),0);
         widths[66] = 40;
         font[67] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(40,-10,34.6,0,20,0,0,0,0,-30,0,-60,20,-60,34.4,-60,40,-50),0);
         widths[67] = 40;
         font[68] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2),new Array(0,0,0,-60,10,-60,40,-60,40,-30,40,0,10,0,0,0),0);
         widths[68] = 40;
         font[69] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,1,2),new Array(40,0,0,0,0,-60,40,-60,0,-30,40,-30),0);
         widths[69] = 40;
         font[70] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(0,0,0,-60,40,-60,0,-30,30,-30),0);
         widths[70] = 40;
         font[71] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,3,3),new Array(20,-30,40,-30,40,-5,31.6,0,20.01,0,0,0,0,-30,0,-60,20.01,-60,34.61,-60,40,-50),0);
         widths[71] = 40;
         font[72] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,0,-60,0,-30,40,-30,40,-60,40,0),0);
         widths[72] = 40;
         font[73] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,20,0,10,0,10,-60,0,-60,20,-60),0);
         widths[73] = 20;
         font[74] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,2),new Array(0,-10,5.2,0,20,0,40,0,40,-30,40,-60,10,-60),0);
         widths[74] = 40;
         font[75] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,0,-60,0,-20,40,-60,10,-30,40,0),0);
         widths[75] = 40;
         font[76] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(40,0,0,0,0,-60),0);
         widths[76] = 40;
         font[77] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,0,0,-60,25,-20,50,-60,50,0),0);
         widths[77] = 50;
         font[78] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(0,0,0,-60,40,-20,40,-60,40,0),0);
         widths[78] = 40;
         font[79] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(0,-30,0,-60,20,-60,40,-60,40,-30,40,0,20,0,0,0,0,-30),0);
         widths[79] = 40;
         font[80] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2),new Array(0,0,0,-60,20,-60,40,-60,40,-45,40,-30,20,-30,0,-30),0);
         widths[80] = 40;
         font[81] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,1,2),new Array(0,-30,0,-60,20,-60,40,-60,40,-30,40,0,20,0,0,0,0,-30,20,-20,40,0),0);
         widths[81] = 40;
         font[82] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,3,3,2,1,2),new Array(0,0,0,-60,14.4,-60,34.4,-60,34.4,-45.8,34.4,-30,18.8,-30,0,-30,18.8,-30,40,0),0);
         widths[82] = 40;
         font[83] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,3),new Array(0,-10,5,0.01,20,0.01,40,0.01,40,-15,40,-30,20,-30,0,-30,0,-45,0,-60,20,-60,35,-60,40,-50),0);
         widths[83] = 40;
         font[84] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(20,0,20,-60,0,-60,40,-60),0);
         widths[84] = 40;
         font[85] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,1,2),new Array(0,-30,0,0,20,0,40,0,40,-30,40,-60,0,-60,0,-30),0);
         widths[85] = 40;
         font[86] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(20,0,40,-60,0,-60,20,0),0);
         widths[86] = 40;
         font[87] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,-60,13.6,0,25,-40,36.4,0,50,-60),0);
         widths[87] = 50;
         font[88] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,0,40,-60,0,-60,40,0),0);
         widths[88] = 40;
         font[89] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,1,2),new Array(20,0,20,-30,40,-60,0,-60,20,-30),0);
         widths[89] = 40;
         font[90] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(40,0,0,0,40,-60,0,-60),0);
         widths[90] = 40;
         font[97] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,1,3,3,3,3),new Array(30,0,30,-20,30,-40,15,-40,5.7,-40,3,-36.8,30,-5.6,23.5,0,15,0,0,0,0,-12.2,0,-24.4,14,-24.4,23.8,-24.4,30,-20),0);
         widths[97] = 30;
         font[98] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(0,0,0,-60,0,-10,5,0,14.4,0,30,0,30,-20,30,-40,14,-40,5,-40,0,-30),0);
         widths[98] = 30;
         font[99] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(30,-10,25,0,15,0,0,0,0,-20,0,-40,15,-40,25,-40,30,-30),0);
         widths[99] = 30;
         font[100] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(30,0,30,-60,30,-10,25,0,15.6,0,0,0,0,-20,0,-40,16,-40,25,-40,30,-30),0);
         widths[100] = 30;
         font[101] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,2),new Array(30,-10,25,0,15,0,0,0,0,-20,0,-40,15,-40,30,-40,30,-20,0,-20),0);
         widths[101] = 30;
         font[102] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,1,2),new Array(0,0,0,-40,0,-60,20,-60,0,-30,10,-30),0);
         widths[102] = 15;
         font[103] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,1,3,3,3,3),new Array(0,10,5,20,15,20,30,20,30,0,30,-40,30,-30,25,-40,15,-40,0,-40,0,-20,0,0,15,0,25,0,30,-10),0);
         widths[103] = 30;
         font[104] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,2),new Array(0,0,0,-60,0,-30,5,-40,15,-40,30,-40,30,-20,30,0),0);
         widths[104] = 30;
         font[105] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,0,0,-40,0,-57.8,0,-60),0);
         widths[105] = 0;
         font[106] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,2,1,2),new Array(-10,20,10,20,10,0,10,-40,10,-57.2,10,-60),0);
         widths[106] = 10;
         font[107] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2,1,2),new Array(0,0,0,-60,0,-10,30,-40,10,-20,30,0),0);
         widths[107] = 30;
         font[108] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2),new Array(0,0,0,-60),0);
         widths[108] = 0;
         font[109] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,2,1,3,3,2),new Array(0,0,0,-40,0,-30,4.2,-40,10,-40,20,-40,20,-20,20,0,20,-20,20,-40,30,-40,40,-40,40,-20,40,0),0);
         widths[109] = 40;
         font[110] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,2),new Array(0,0,0,-40,0,-30,5,-40,15,-40,30,-40,30,-20,30,0),0);
         widths[110] = 30;
         font[111] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3),new Array(0,-20,0,0.01,15,0.01,30,0.01,30,-20,30,-40,15,-40,0,-40,0,-20),0);
         widths[111] = 30;
         font[112] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(0,20,0,-40,0,-30,5,-40,15,-40,30,-40,30,-20,30,0,15,0,5,0,0,-10),0);
         widths[112] = 30;
         font[113] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3,3,3,3),new Array(30,20,30,-40,30,-30,25,-40,15,-40,-0.01,-40,-0.01,-20,-0.01,0,15,0,25,0,30,-10),0);
         widths[113] = 30;
         font[114] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,3),new Array(0,0,0,-40,0,-30,2.8,-40,20,-40),0);
         widths[114] = 20;
         font[115] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,3,3,3,2),new Array(0,-5,4.4,0.01,15,0.01,30,0.01,30,-11.5,30,-23,16.2,-23,3,-23,3,-31.5,3,-39.99,15.4,-39.99,21.8,-40),0);
         widths[115] = 30;
         font[116] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,3,3,2,1,2),new Array(30,-10,24.6,0,15,0,0,0,0,-20.01,0,-50,-5,-40,20,-40),0);
         widths[116] = 30;
         font[117] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,3,3,2),new Array(0,-40,0,-20,0,0,15,0,30,0,30,-20,30,-40),0);
         widths[117] = 30;
         font[118] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2),new Array(0,-40,15,0,30,-40),0);
         widths[118] = 30;
         font[119] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2,2),new Array(0,-40,10,0,20,-30,30,0,40,-40),0);
         widths[119] = 40;
         font[120] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,-40,30,0,30,-40,0,0),0);
         widths[120] = 30;
         font[121] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,1,2),new Array(0,20,30,-40,0,-40,15,-10),0);
         widths[121] = 30;
         font[122] = new nl.jorisdormans.phantomGraphics.PhantomShape(new Array(1,2,2,2),new Array(30,0,0,0,30,-40,0,-40),0);
         widths[122] = 30;
      }
      
      public static function textWidth(param1:String, param2:Number) : Number
      {
         var _loc7_:int = 0;
         var _loc3_:Number = param2 / characterHeight;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            if((_loc7_ = param1.charCodeAt(_loc6_)) == 32)
            {
               _loc5_ += widths[32] * _loc3_;
            }
            else if(_loc7_ == 124)
            {
               _loc5_ = 0;
            }
            else if(_loc7_ >= 33 && _loc7_ <= 96)
            {
               if(font[_loc7_] != null)
               {
                  _loc5_ += widths[_loc7_] * _loc3_ + characterSpacing * _loc3_ * characterHeight;
                  _loc5_ = Math.round(_loc5_);
               }
            }
            else if(_loc7_ >= 97 && _loc7_ <= 97 + 25)
            {
               if(smallCaps)
               {
                  _loc7_ -= 32;
                  if(font[_loc7_] != null)
                  {
                     _loc5_ += widths[_loc7_] * _loc3_ * 0.8 + characterSpacing * _loc3_ * characterHeight;
                  }
               }
               else if(font[_loc7_] != null)
               {
                  _loc5_ += widths[_loc7_] * _loc3_ + characterSpacing * _loc3_ * characterHeight;
               }
            }
            if(_loc5_ > _loc4_)
            {
               _loc4_ = _loc5_;
            }
            _loc6_++;
         }
         return _loc4_ - _loc3_ * characterSpacing - _loc3_ * widths[32];
      }
      
      public static function lineWidth(param1:String, param2:Number) : Number
      {
         var _loc6_:int = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = param2 / characterHeight;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            if((_loc6_ = param1.charCodeAt(_loc5_)) == 32)
            {
               _loc3_ += widths[32] * _loc4_;
            }
            else if(_loc6_ >= 33 && _loc6_ <= 96)
            {
               if(font[_loc6_] != null)
               {
                  _loc3_ += widths[_loc6_] * _loc4_ + characterSpacing * _loc4_ * characterHeight;
               }
            }
            else if(_loc6_ >= 97 && _loc6_ <= 97 + 25)
            {
               if(smallCaps)
               {
                  _loc6_ -= 32;
                  if(font[_loc6_] != null)
                  {
                     _loc3_ += widths[_loc6_] * _loc4_ * 0.8 + characterSpacing * _loc4_ * characterHeight;
                  }
               }
               else if(font[_loc6_] != null)
               {
                  _loc3_ += widths[_loc6_] * _loc4_ + characterSpacing * _loc4_ * characterHeight;
               }
            }
            _loc5_++;
         }
         if(_loc3_ > 0)
         {
            _loc3_ -= characterSpacing * _loc4_ * characterHeight;
         }
         return _loc3_;
      }
      
      public static function drawTextLine(param1:String, param2:Graphics, param3:Number, param4:Number, param5:Number, param6:String) : int
      {
         var _loc13_:int = 0;
         var _loc7_:Number = lineWidth(param1,param5);
         var _loc8_:Number = Math.round(param3);
         var _loc9_:Number = Math.round(param4);
         switch(param6)
         {
            case ALIGN_RIGHT:
               _loc8_ -= _loc7_;
               break;
            case ALIGN_CENTER:
               _loc8_ -= _loc7_ * 0.5;
         }
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param5 / characterHeight) * 0.8;
         var _loc12_:int = 0;
         while(_loc12_ < param1.length)
         {
            if((_loc13_ = param1.charCodeAt(_loc12_)) == 32)
            {
               _loc8_ += widths[32] * _loc10_;
            }
            else if(_loc13_ >= 33 && _loc13_ <= 96)
            {
               if(font[_loc13_] != null)
               {
                  font[_loc13_].drawScaled(param2,_loc8_,_loc9_,_loc10_,_loc10_);
                  _loc8_ += widths[_loc13_] * _loc10_ + characterSpacing * _loc10_ * characterHeight;
                  _loc8_ = Math.round(_loc8_);
               }
            }
            else if(_loc13_ >= 97 && _loc13_ <= 97 + 25)
            {
               if(smallCaps)
               {
                  _loc13_ -= 32;
                  if(font[_loc13_] != null)
                  {
                     font[_loc13_].drawScaled(param2,_loc8_,_loc9_,_loc11_,_loc11_);
                     _loc8_ += widths[_loc13_] * _loc10_ * 0.8 + characterSpacing * _loc10_ * characterHeight;
                  }
               }
               else if(font[_loc13_] != null)
               {
                  font[_loc13_].drawScaled(param2,_loc8_,_loc9_,_loc10_,_loc10_);
                  _loc8_ += widths[_loc13_] * _loc10_ + characterSpacing * _loc10_ * characterHeight;
               }
            }
            _loc12_++;
         }
         return _loc7_;
      }
      
      public static function drawText(param1:String, param2:Graphics, param3:Number, param4:Number, param5:Number, param6:String) : Point
      {
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:Number = NaN;
         var _loc7_:Number = param5 / characterHeight;
         var _loc8_:Point = new Point(0,0);
         if(!param1)
         {
            return _loc8_;
         }
         while(param1.length > 0)
         {
            _loc8_.y += _loc7_ * lineHeight * characterHeight;
            if((_loc9_ = param1.indexOf("|")) >= 0)
            {
               _loc10_ = param1.substr(0,_loc9_);
               param1 = param1.substr(_loc9_ + 1);
            }
            else
            {
               _loc10_ = param1;
               param1 = "";
            }
            if((_loc11_ = drawTextLine(_loc10_,param2,param3,param4,param5,param6)) > _loc8_.x)
            {
               _loc8_.x = _loc11_;
            }
            param4 += _loc7_ * lineHeight * characterHeight;
         }
         return _loc8_;
      }
      
      public static function drawTextLineToSVG(param1:String, param2:XML, param3:Number, param4:Number, param5:Number, param6:String, param7:String) : void
      {
         var _loc10_:int = 0;
         var _loc8_:XML;
         (_loc8_ = <text/>).@x = param3.toFixed(2);
         _loc8_.@y = param4.toFixed(2);
         param5 *= 1.5;
         var _loc9_:String = "start";
         if(param6 == "center")
         {
            _loc9_ = "middle";
         }
         if(param6 == "right")
         {
            _loc9_ = "end";
         }
         _loc8_.@style = "font-size:" + param5.toFixed(0) + "px;font-style:normal;font-weight:normal;text-align:" + param6 + ";text-anchor:" + _loc9_ + ";fill:" + param7 + ";fill-opacity:1;stroke:none;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;font-family:Bitstream Vera Sans";
         while((_loc10_ = param1.indexOf("|")) >= 0)
         {
            param1 = param1.substr(0,_loc10_) + String.fromCharCode(27) + param1.substr(_loc10_ + 1);
         }
         _loc8_.appendChild(param1);
         param2.appendChild(_loc8_);
      }
      
      public static function drawTextToSVG(param1:String, param2:XML, param3:Number, param4:Number, param5:Number, param6:String, param7:String, param8:String, param9:Number) : void
      {
         var _loc12_:int = 0;
         var _loc13_:String = null;
         var _loc10_:Number = param5 / characterHeight;
         var _loc11_:XML = <g/>;
         if(!param1)
         {
            return;
         }
         while(param1.length > 0)
         {
            if((_loc12_ = param1.indexOf("|")) >= 0)
            {
               _loc13_ = param1.substr(0,_loc12_);
               param1 = param1.substr(_loc12_ + 1);
            }
            else
            {
               _loc13_ = param1;
               param1 = "";
            }
            drawTextLineToSVG(_loc13_,_loc11_,param3,param4,param5,param6,param8);
            param4 += _loc10_ * lineHeight * characterHeight;
         }
         param2.appendChild(_loc11_);
      }
   }
}
