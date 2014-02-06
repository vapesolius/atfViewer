package
{
	
	import flash.events.Event;
	
	import starling.textures.Texture;
	
	public class ATFEvent extends Event
	{
		public var texture:Texture;
		public function ATFEvent(texture:Texture)
		{
			this.texture = texture;
			super("ATFLoaded", true, false);
		}
	}
}