package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Font extends Object
{

	public function getAscent() : Float;

	public function getBaseline() : Float;

	public function getDescent() : Float;

	public function getFilter() : FilterMode;

	public function getHeight() : Float;

	public function getLineHeight() : Float;

	public function getWidth(line:String) : Float;

	public function getWrap(text:String, wraplimit:Float) : Float;

	@:overload(function (codepoint:Float) : Bool {})
	public function hasGlyph(character:String) : Bool;

	public function setFallbacks(fallbackfont1:Font, args:Rest<Font>) : Void;

	public function setFilter(min:FilterMode, ?mag:FilterMode, ?anisotropy:Float) : Void;

	public function setLineHeight(height:Float) : Void;
}