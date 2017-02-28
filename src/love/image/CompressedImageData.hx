package love.image;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class CompressedImageData extends Data
{

	@:overload(function (level:Float) : Float {})
	public function getDimensions() : Float;

	public function getFormat() : CompressedImageFormat;

	@:overload(function (level:Float) : Float {})
	public function getHeight() : Float;

	public function getMipmapCount(mipmaps:Float) : Void;

	@:overload(function (level:Float) : Float {})
	public function getWidth() : Float;
}