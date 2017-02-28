package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class PolygonShape extends Shape
{

	public function getPoints() : Float;
}