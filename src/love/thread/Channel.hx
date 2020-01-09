package love.thread;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Channel extends Object
{

	public function clear() : Void;

	@:overload(function (timeout:Float) : Dynamic {})
	public function demand() : Dynamic;

	public function getCount() : Float;

	public function hasRead(id:Float) : Bool;

	public function peek() : Dynamic;

	public function performAtomic(func:Dynamic, arg1:Dynamic, args:Rest<Dynamic>) : ChannelPerformAtomicResult;

	public function pop() : Dynamic;

	public function push(value:Dynamic) : Float;

	@:overload(function (value:Dynamic, timeout:Float) : Bool {})
	public function supply(value:Dynamic) : Bool;
}

@:multiReturn
extern class ChannelPerformAtomicResult
{
	var ret1 : Dynamic;
}