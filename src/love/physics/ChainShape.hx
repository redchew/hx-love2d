package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class ChainShape extends Shape
{

	public function getChildEdge(index:Float) : Float;

	public function getPoint(index:Float) : Float;

	public function getPoints() : Float;

	public function getVertexCount() : Float;

	public function setNextVertex(x:Float, y:Float) : Void;

	public function setPreviousVertex(x:Float, y:Float) : Void;
}