package
{
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class StarlingView extends Sprite
	{
		public function StarlingView()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private var q:Quad;
		
		
		private function onAdded ( e:Event ):void
		{
			Starling.current.nativeStage.addEventListener("ATFLoaded",onATFLoaded);
		}
		
		private var image:Image;
		
		private function onATFLoaded(e:ATFEvent):void{
			if (image){
				removeChild(image);
			}
			image = new Image(e.texture);
			addChild(image);
		}
	}
}