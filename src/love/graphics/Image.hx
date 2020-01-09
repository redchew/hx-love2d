package love.graphics;
import love.image.ImageData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Image extends Texture
{

	public function getDimensions() : ImageGetDimensionsResult;

	@:overload(function () : ImageGetFilterResult {})
	public function getFilter() : ImageGetFilterResult;

	public function getFlags() : Table<Dynamic,Dynamic>;

	public function getHeight() : Float;

	public function getWidth() : Float;

	public function getWrap() : ImageGetWrapResult;

	public function replacePixels(data:ImageData, slice:Float, ?mipmap:Float, ?x:Float, ?y:Float, reloadmipmaps:Bool) : Void;

	@:overload(function (min:FilterMode, mag:FilterMode, ?anisotropy:Float) : Void {})
	public function setFilter(min:FilterMode, mag:FilterMode) : Void;

	public function setWrap(horiz:WrapMode, vert:WrapMode) : Void;
}

@:multiReturn
extern class ImageGetFilterResult
{
	var min : FilterMode;
	var mag : FilterMode;
	var anisotropy : Float;
}

@:multiReturn
extern class ImageGetWrapResult
{
	var horiz : WrapMode;
	var vert : WrapMode;
}

@:multiReturn
extern class ImageGetDimensionsResult
{
	var width : Float;
	var height : Float;
}