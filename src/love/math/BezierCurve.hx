package love.math;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class BezierCurve extends Object
{

	public function evaluate(t:Float) : BezierCurveEvaluateResult;

	public function getControlPoint(i:Float) : BezierCurveGetControlPointResult;

	public function getControlPointCount() : Float;

	public function getDegree() : Float;

	public function getDerivative() : BezierCurve;

	public function getSegment(startpoint:Float, endpoint:Float) : BezierCurve;

	public function insertControlPoint(x:Float, y:Float, ?i:Float) : Void;

	public function removeControlPoint(index:Float) : Void;

	public function render(?depth:Float) : Table<Dynamic,Dynamic>;

	public function renderSegment(startpoint:Float, endpoint:Float, ?depth:Float) : Table<Dynamic,Dynamic>;

	public function rotate(angle:Float, ?ox:Float, ?oy:Float) : Void;

	public function scale(s:Float, ?ox:Float, ?oy:Float) : Void;

	public function setControlPoint(i:Float, ox:Float, oy:Float) : Void;

	public function translate(dx:Float, dy:Float) : Void;
}

@:multiReturn
extern class BezierCurveEvaluateResult
{
	var x : Float;
	var y : Float;
}

@:multiReturn
extern class BezierCurveGetControlPointResult
{
	var x : Float;
	var y : Float;
}