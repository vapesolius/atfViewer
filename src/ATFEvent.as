package
{
	
	import flash.events.Event;
	
	import starling.textures.Texture;
	
	public class ATFEvent extends Event
	{
		public static const LOADED:String = "ATFLoaded";
		public static const ZOOM:String = "Zoom";
		
		public var data:Object;
		public function ATFEvent(type:String,data:Object)
		{
			this.data = data;
			super(type, true, false);
		}
	}
}