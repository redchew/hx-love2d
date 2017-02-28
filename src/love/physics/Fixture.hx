package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Fixture extends Object
{

	public function destroy() : Void;

	public function getBody() : Body;

	public function getBoundingBox(?index:Float) : Float;

	public function getCategory() : Float;

	public function getDensity() : Float;

	public function getFilterData() : Float;

	public function getFriction() : Float;

	public function getGroupIndex() : Float;

	public function getMask() : Float;

	public function getMassData() : Float;

	public function getRestitution() : Float;

	public function getShape() : Shape;

	public function getUserData() : Dynamic;

	public function isDestroyed() : Bool;

	public function isSensor() : Bool;

	public function rayCast(x1:Float, y1:Float, x2:Float, y1:Float, maxFraction:Float, ?childIndex:Float) : Float;

	public function setCategory(category1:Float, category2:Float, args:Rest<Float>) : Void;

	public function setDensity(density:Float) : Void;

	public function setFilterData(categories:Float, mask:Float, group:Float) : Void;

	public function setFriction(friction:Float) : Void;

	public function setGroupIndex(group:Float) : Void;

	public function setMask(mask1:Float, mask2:Float, args:Rest<Float>) : Void;

	public function setRestitution(restitution:Float) : Void;

	public function setSensor(sensor:Bool) : Void;

	public function setUserData(value:Dynamic) : Void;

	public function testPoint(x:Float, y:Float) : Bool;
}