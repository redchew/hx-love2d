package love.graphics;
import love.image.CompressedImageData;
import love.image.ImageData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Image extends Texture
{

	@:overload(function () : CompressedImageData {})
	public function getData() : ImageData;

	public function getDimensions() : Float;

	public function getFilter() : FilterMode;

	public function getFlags() : Table<Dynamic,Dynamic>;

	public function getHeight() : Float;

	public function getMipmapFilter() : FilterMode;

	public function getWidth() : Float;

	public function getWrap() : WrapMode;

	@:overload(function (x:Float, y:Float, width:Float, height:Float) : Void {})
	public function refresh() : Void;

	public function setFilter(min:FilterMode, ?mag:FilterMode) : Void;

	@:overload(function () : Void {})
	public function setMipmapFilter(filtermode:FilterMode, ?sharpness:Float) : Void;

	public function setWrap(horizontal:WrapMode, ?vertical:WrapMode) : Void;
}