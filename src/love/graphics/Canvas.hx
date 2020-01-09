package love.graphics;
import love.image.ImageData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Canvas extends Texture
{

	public function generateMipmaps() : Void;

	public function getDimensions() : CanvasGetDimensionsResult;

	@:overload(function () : CanvasGetFilterResult {})
	public function getFilter() : CanvasGetFilterResult;

	public function getHeight() : Float;

	public function getMSAA() : Float;

	public function getMipmapMode() : MipmapMode;

	public function getWidth() : Float;

	public function getWrap() : CanvasGetWrapResult;

	@:overload(function (slice:Float, ?mipmap:Float, x:Float, y:Float, width:Float, height:Float) : ImageData {})
	public function newImageData() : ImageData;

	public function renderTo(func:Dynamic) : Void;

	@:overload(function (min:FilterMode, mag:FilterMode, ?anisotropy:Float) : Void {})
	public function setFilter(min:FilterMode, mag:FilterMode) : Void;

	public function setWrap(horiz:WrapMode, vert:WrapMode) : Void;
}

@:multiReturn
extern class CanvasGetFilterResult
{
	var min : FilterMode;
	var mag : FilterMode;
	var anisotropy : Float;
}

@:multiReturn
extern class CanvasGetWrapResult
{
	var horiz : WrapMode;
	var vert : WrapMode;
}

@:multiReturn
extern class CanvasGetDimensionsResult
{
	var width : Float;
	var height : Float;
}