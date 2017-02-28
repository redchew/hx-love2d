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

	public static function push(e:Event, ?a:Dynamic, ?b:Dynamic, ?c:Dynamic, ?d:Dynamic) : Void;

	public static function quit(?exitstatus:Float) : Void;

	public static function wait() : Event;
}