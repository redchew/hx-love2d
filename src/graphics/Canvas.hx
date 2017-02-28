package love.graphics;
import love.image.ImageData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Canvas extends Texture
{

	public function getDimensions() : Float;

	public function getFilter() : FilterMode;

	public function getFormat() : CanvasFormat;

	public function getHeight() : Float;

	public function getMSAA() : Float;

	public function getWidth() : Float;

	public function getWrap() : WrapMode;

	public function isActive() : Bool;

	@:overload(function (x:Float, y:Float, width:Float, height:Float) : ImageData {})
	public function newImageData() : ImageData;

	public function renderTo(func:Dynamic) : Void;

	public function setFilter(min:FilterMode, ?mag:FilterMode, ?anisotropy:Float) : Void;

	public function setWrap(horizontal:WrapMode, ?vertical:WrapMode) : Void;
}