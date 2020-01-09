package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Font extends Object
{

	public function getAscent() : Float;

	public function getBaseline() : Float;

	public function getDPIScale() : Float;

	public function getDescent() : Float;

	public function getFilter() : FontGetFilterResult;

	public function getHeight() : Float;

	public function getLineHeight() : Float;

	public function getWidth(text:String) : Float;

	public function getWrap(text:String, wraplimit:Float) : FontGetWrapResult;

	@:overload(function (character1:String, character2:String) : Bool {})
	@:overload(function (codepoint1:Float, codepoint2:Float) : Bool {})
	public function hasGlyphs(text:String) : Bool;

	public function setFallbacks(fallbackfont1:Font, args:Rest<Font>) : Void;

	public function setFilter(min:FilterMode, mag:FilterMode, ?anisotropy:Float) : Void;

	public function setLineHeight(height:Float) : Void;
}

@:multiReturn
extern class FontGetFilterResult
{
	var min : FilterMode;
	var mag : FilterMode;
	var anisotropy : Float;
}

@:multiReturn
extern class FontGetWrapResult
{
	var width : Float;
	var wrappedtext : Table<Dynamic,Dynamic>;
}