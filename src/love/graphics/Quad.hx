package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Quad extends Object
{

	public function getViewport() : Float;

	public function setViewport() : Float;
}