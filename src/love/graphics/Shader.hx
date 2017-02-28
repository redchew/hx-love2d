package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Shader extends Object
{

	public function getExternVariable(name:String) : String;

	public function getWarnings() : String;

	@:overload(function (name:String, vector:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void {})
	@:overload(function (name:String, matrix:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void {})
	@:overload(function (name:String, image:Image, args:Rest<Image>) : Void {})
	@:overload(function (name:String, canvas:Canvas, args:Rest<Canvas>) : Void {})
	@:overload(function (name:String, boolean:Bool, args:Rest<Bool>) : Void {})
	public function send(name:String, number:Float, args:Rest<Float>) : Void;

	public function sendColor(name:String, color:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void;
}