package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Texture extends Drawable
{

	public function getDepth() : Float;

	public function getFormat() : PixelFormat;

	public function getLayerCount() : Float;

	public function getMipmapCount() : Float;

	public function getTextureType() : TextureType;

	public function isReadable() : Bool;
}