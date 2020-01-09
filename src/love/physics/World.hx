package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class World extends Object
{

	public function destroy() : Void;

	public function getBodies() : Table<Dynamic,Dynamic>;

	public function getBodyCount() : Float;

	public function getCallbacks() : WorldGetCallbacksResult;

	public function getContactCount() : Float;

	public function getContactFilter() : Dynamic;

	public function getContacts() : Table<Dynamic,Dynamic>;

	public function getGravity() : WorldGetGravityResult;

	public function getJointCount() : Float;

	public function getJoints() : Table<Dynamic,Dynamic>;

	public function isDestroyed() : Bool;

	public function isLocked() : Bool;

	public function isSleepingAllowed() : Bool;

	public function queryBoundingBox(topLeftX:Float, topLeftY:Float, bottomRightX:Float, bottomRightY:Float, callback:Dynamic) : Void;

	public function rayCast(fixture:Fixture, x:Float, y:Float, xn:Float, yn:Float, fraction:Float) : Float;

	public function setCallbacks(beginContact:Dynamic, endContact:Dynamic, preSolve:Dynamic, postSolve:Dynamic) : Void;

	public function setContactFilter(filter:Dynamic) : Void;

	public function setGravity(x:Float, y:Float) : Void;

	public function setSleepingAllowed(allow:Bool) : Void;

	public function translateOrigin(x:Float, y:Float) : Void;

	public function update(dt:Float, ?velocityiterations:Float, ?positioniterations:Float) : Void;
}

@:multiReturn
extern class WorldGetGravityResult
{
	var x : Float;
	var y : Float;
}

@:multiReturn
extern class WorldGetCallbacksResult
{
	var beginContact : Dynamic;
	var endContact : Dynamic;
	var preSolve : Dynamic;
	var postSolve : Dynamic;
}