package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Body extends Object
{

	public function applyAngularImpulse(impulse:Float) : Void;

	@:overload(function (fx:Float, fy:Float, x:Float, y:Float) : Void {})
	public function applyForce(fx:Float, fy:Float) : Void;

	@:overload(function (ix:Float, iy:Float, x:Float, y:Float) : Void {})
	public function applyLinearImpulse(ix:Float, iy:Float) : Void;

	public function applyTorque(torque:Float) : Void;

	public function destroy() : Void;

	public function getAngle() : Float;

	public function getAngularDamping() : Float;

	public function getAngularVelocity() : Float;

	public function getContactList() : Table<Dynamic,Dynamic>;

	public function getFixtureList() : Table<Dynamic,Dynamic>;

	public function getGravityScale() : Float;

	public function getInertia() : Float;

	public function getJointList() : Table<Dynamic,Dynamic>;

	public function getLinearDamping() : Float;

	public function getLinearVelocity() : Float;

	public function getLinearVelocityFromLocalPoint(x:Float, y:Float) : Float;

	public function getLinearVelocityFromWorldPoint(x:Float, y:Float) : Float;

	public function getLocalCenter() : Float;

	public function getLocalPoint(worldX:Float, worldY:Float) : Float;

	public function getLocalVector(worldX:Float, worldY:Float) : Float;

	public function getMass() : Float;

	public function getMassData() : Float;

	public function getPosition() : Float;

	public function getType() : BodyType;

	public function getUserData() : Dynamic;

	public function getWorld() : World;

	public function getWorldCenter() : Float;

	public function getWorldPoint(localX:Float, localY:Float) : Float;

	public function getWorldPoints(x1:Float, y1:Float, x2:Float, y2:Float, args:Rest<Float>) : Float;

	public function getWorldVector(localX:Float, localY:Float) : Float;

	public function getX() : Float;

	public function getY() : Float;

	public function isActive() : Bool;

	public function isAwake() : Bool;

	public function isBullet() : Bool;

	public function isDestroyed() : Bool;

	public function isFixedRotation() : Bool;

	public function isSleepingAllowed() : Bool;

	public function resetMassData() : Void;

	public function setActive(active:Bool) : Void;

	public function setAngle(angle:Float) : Void;

	public function setAngularDamping(damping:Float) : Void;

	public function setAngularVelocity(w:Float) : Void;

	public function setAwake(awake:Bool) : Void;

	public function setBullet(status:Bool) : Void;

	public function setFixedRotation(fixed:Bool) : Void;

	public function setGravityScale(scale:Float) : Void;

	public function setInertia(inertia:Float) : Void;

	public function setLinearDamping(ld:Float) : Void;

	public function setLinearVelocity(x:Float, y:Float) : Void;

	public function setMass(mass:Float) : Void;

	public function setMassData(x:Float, y:Float, mass:Float, inertia:Float) : Void;

	public function setPosition(x:Float, y:Float) : Void;

	public function setSleepingAllowed(allowed:Bool) : Void;

	public function setType(type:BodyType) : Void;

	public function setUserData(value:Dynamic) : Void;

	public function setX(x:Float) : Void;

	public function setY(y:Float) : Void;
}