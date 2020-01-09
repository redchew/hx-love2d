package love.math;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Transform extends Object
{

	public function apply(other:Transform) : Transform;

	public function clone() : Transform;

	public function getMatrix() : TransformGetMatrixResult;

	public function inverse() : Transform;

	public function inverseTransformPoint(localX:Float, localY:Float) : TransformInverseTransformPointResult;

	public function isAffine() : Bool;

	public function reset() : Transform;

	public function rotate(angle:Float) : Transform;

	public function scale(sx:Float, ?sy:Float) : Transform;

	@:overload(function (layout:MatrixLayout, e1_1:Float, e1_2:Float, args:Rest<Float>) : Transform {})
	@:overload(function (layout:MatrixLayout, matrix:Table<Dynamic,Dynamic>) : Transform {})
	@:overload(function (layout:MatrixLayout, matrix:Table<Dynamic,Dynamic>) : Transform {})
	public function setMatrix(e1_1:Float, e1_2:Float, args:Rest<Float>) : Transform;

	public function setTransformation(x:Float, y:Float, ?angle:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Transform;

	public function shear(kx:Float, ky:Float) : Transform;

	public function transformPoint(globalX:Float, globalY:Float) : TransformTransformPointResult;

	public function translate(dx:Float, dy:Float) : Transform;
}

@:multiReturn
extern class TransformGetMatrixResult
{
	var e1_1 : Float;
	var e1_2 : Float;
	var e4_4 : Float;
}

@:multiReturn
extern class TransformInverseTransformPointResult
{
	var globalX : Float;
	var globalY : Float;
}

@:multiReturn
extern class TransformTransformPointResult
{
	var localX : Float;
	var localY : Float;
}