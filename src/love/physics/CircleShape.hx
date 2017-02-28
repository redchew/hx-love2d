package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class CircleShape extends Shape
{

	public function getPoint() : Float;

	public function getRadius() : Float;

	public function setPoint(x:Float, y:Float) : Void;

	public function setRadius(radius:Float) : Void;
}