package
{
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	
	public class StarlingView extends Sprite
	{
		public function StarlingView()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private var q:Quad;
		
		
		private function onAdded ( e:Event ):void
		{
			Starling.current.nativeStage.addEventListener(ATFEvent.LOADED,onATFLoaded);
			Starling.current.nativeStage.addEventListener(ATFEvent.ZOOM,onZoom);
		}
		
		private var image:Image;
		
		private function onATFLoaded(e:ATFEvent):void{
			if (image){
				removeChild(image);
			}
			image = new Image(e.data as Texture);
			addChild(image);
		}
		
		private function onZoom(e:ATFEvent):void{
			if (image){
				image.scaleX = image.scaleY = e.data as Number;
			}
			
		}
	}
}