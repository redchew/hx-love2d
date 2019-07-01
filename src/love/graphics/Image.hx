package love.graphics;
import love.image.ImageData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Image extends Texture
{

	public function getDimensions() : ImageGetDimensionsResult;

	public function getFilter() : ImageGetFilterResult;

	public function getFlags() : Table<Dynamic,Dynamic>;

	public function getHeight() : Float;

	public function getMipmapFilter() : ImageGetMipmapFilterResult;

	public function getWidth() : Float;

	public function getWrap() : ImageGetWrapResult;

	public function replacePixels(data:ImageData, slice:Float, ?mipmap:Float) : Void;

	public function setFilter(min:FilterMode, ?mag:FilterMode) : Void;

	@:overload(function () : Void {})
	public function setMipmapFilter(filtermode:FilterMode, ?sharpness:Float) : Void;

	public function setWrap(horizontal:WrapMode, ?vertical:WrapMode) : Void;
}

@:multiReturn
extern class ImageGetFilterResult
{
	var min : FilterMode;
	var mag : FilterMode;
}

@:multiReturn
extern class ImageGetMipmapFilterResult
{
	var mode : FilterMode;
	var sharpness : Float;
}

@:multiReturn
extern class ImageGetWrapResult
{
	var horizontal : WrapMode;
	var vertical : WrapMode;
}

@:multiReturn
extern class ImageGetDimensionsResult
{
	var width : Float;
	var height : Float;
}