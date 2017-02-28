package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Contact extends Object
{

	public function getFixtures() : Fixture;

	public function getFriction() : Float;

	public function getNormal() : Float;

	public function getPositions() : Float;

	public function getRestitution() : Float;

	public function isEnabled() : Bool;

	public function isTouching() : Bool;

	public function resetFriction() : Void;

	public function resetRestitution() : Void;

	public function setEnabled(enabled:Bool) : Void;

	public function setFriction(friction:Float) : Void;

	public function setRestitution(restitution:Float) : Void;
}