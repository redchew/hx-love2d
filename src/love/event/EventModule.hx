package love.event;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.event")
extern class EventModule
{

	public static function clear() : Void;

	public static function poll() : Dynamic;

	public static function pump() : Void;

	public static function push(n:Event, ?a:Dynamic, ?b:Dynamic, ?c:Dynamic, ?d:Dynamic, ?e:Dynamic, ?f:Dynamic, args:Rest<Dynamic>) : Void;

	@:overload(function ('restart':String) : Void {})
	public static function quit(?exitstatus:Float) : Void;

	public static function wait() : EventModuleWaitResult;
}

@:multiReturn
extern class EventModuleWaitResult
{
	var n : Event;
	var a : Dynamic;
	var b : Dynamic;
	var c : Dynamic;
	var d : Dynamic;
	var e : Dynamic;
	var f : Dynamic;
}