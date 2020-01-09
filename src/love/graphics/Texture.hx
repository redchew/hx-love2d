package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Texture extends Drawable
{

	public function getDPIScale() : Float;

	public function getDepth() : Float;

	public function getFormat() : PixelFormat;

	public function getLayerCount() : Float;

	public function getMipmapCount() : Float;

	public function getMipmapFilter() : TextureGetMipmapFilterResult;

	public function getPixelHeight() : Float;

	public function getPixelWidth() : Float;

	public function getTextureType() : TextureType;

	public function isReadable() : Bool;

	@:overload(function () : Void {})
	public function setMipmapFilter(filtermode:FilterMode, ?sharpness:Float) : Void;
}

@:multiReturn
extern class TextureGetMipmapFilterResult
{
	var mode : FilterMode;
	var sharpness : Float;
}