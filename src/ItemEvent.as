package
{
	
	import flash.events.Event;
	
	import starling.textures.Texture;
	
	public class ItemEvent extends Event
	{
		public var data:Object;
		public function ItemEvent(data:Object)
		{
			this.data = data;
			super("ItemOver", true, false);
		}
	}
}