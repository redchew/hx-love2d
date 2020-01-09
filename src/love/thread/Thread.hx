package love.thread;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Thread extends Object
{

	public function getError() : String;

	public function isRunning() : Bool;

	@:overload(function (arg1:Dynamic, arg2:Dynamic, args:Rest<Dynamic>) : Void {})
	public function start() : Void;

	public function wait() : Void;
}