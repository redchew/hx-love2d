package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Joint extends Object
{

	public function destroy() : Void;

	public function getAnchors() : Float;

	public function getBodies() : Body;

	public function getCollideConnected() : Bool;

	public function getReactionForce() : Float;

	public function getReactionTorque(invdt:Float) : Float;

	public function getType() : JointType;

	public function getUserData() : Dynamic;

	public function isDestroyed() : Bool;

	public function setUserData(value:Dynamic) : Void;
}