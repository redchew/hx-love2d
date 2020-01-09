package love.graphics;
import love.Data;
import love.math.MatrixLayout;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Shader extends Object
{

	public function getWarnings() : String;

	public function hasUniform(name:String) : Bool;

	@:overload(function (name:String, vector:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void {})
	@:overload(function (name:String, matrix:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void {})
	@:overload(function (name:String, texture:Texture) : Void {})
	@:overload(function (name:String, boolean:Bool, args:Rest<Bool>) : Void {})
	@:overload(function (name:String, matrixlayout:MatrixLayout, matrix:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void {})
	@:overload(function (name:String, data:Data, ?offset:Float, ?size:Float) : Void {})
	@:overload(function (name:String, data:Data, matrixlayout:MatrixLayout, ?offset:Float, ?size:Float) : Void {})
	public function send(name:String, number:Float, args:Rest<Float>) : Void;

	public function sendColor(name:String, color:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>) : Void;
}