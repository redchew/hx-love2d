package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Shape extends Object
{

	public function computeAABB(tx:Float, ty:Float, tr:Float, ?childIndex:Float) : Float;

	public function computeMass(density:Float) : Float;

	public function getChildCount() : Float;

	public function getRadius() : Float;

	public function getType() : ShapeType;

	public function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, tx:Float, ty:Float, tr:Float, ?childIndex:Float) : Float;

	public function testPoint(x:Float, y:Float) : Bool;
}