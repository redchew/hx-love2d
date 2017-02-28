package love.window;
import love.image.ImageData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.window")
extern class WindowModule
{

	public static function close() : Void;

	@:overload(function (px:Float, py:Float) : Float {})
	public static function fromPixels(pixelvalue:Float) : Float;

	public static function getDisplayName(displayindex:Float) : String;

	public static function getFullscreen() : Bool;

	public static function getFullscreenModes(?display:Float) : Table<Dynamic,Dynamic>;

	public static function getIcon() : ImageData;

	public static function getMode() : Float;

	public static function getPixelScale() : Float;

	public static function getPosition() : Float;

	public static function getTitle() : String;

	public static function hasFocus() : Bool;

	public static function hasMouseFocus() : Bool;

	public static function isCreated() : Bool;

	public static function isDisplaySleepEnabled() : Bool;

	public static function isVisible() : Bool;

	public static function maximize() : Void;

	public static function minimize() : Void;

	public static function requestAttention(?continuous:Bool) : Void;

	public static function setDisplaySleepEnabled(enable:Bool) : Void;

	@:overload(function (fullscreen:Bool, fstype:FullscreenType) : Bool {})
	public static function setFullscreen(fullscreen:Bool) : Bool;

	public static function setIcon(imagedata:ImageData) : Bool;

	public static function setMode(width:Float, height:Float, flags:Table<Dynamic,Dynamic>) : Bool;

	public static function setPosition(x:Float, y:Float, display:Float) : Void;

	public static function setTitle(title:String) : Void;

	@:overload(function (title:String, message:String, buttonlist:Table<Dynamic,Dynamic>, ?type:MessageBoxType, ?attachtowindow:Bool) : Float {})
	public static function showMessageBox(title:String, message:String, ?type:MessageBoxType, ?attachtowindow:Bool) : Bool;

	@:overload(function (x:Float, y:Float) : Float {})
	public static function toPixels(value:Float) : Float;
}