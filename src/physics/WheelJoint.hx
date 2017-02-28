package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class WheelJoint extends Joint
{

	public function getJointSpeed() : Float;

	public function getJointTranslation() : Float;

	public function getLimits() : Float;

	public function getMaxMotorTorque() : Float;

	public function getMotorSpeed() : Float;

	public function getMotorTorque(invdt:Float) : Float;

	public function getSpringDampingRatio() : Float;

	public function getSpringFrequency() : Float;

	public function setMaxMotorTorque(maxTorque:Float) : Void;

	public function setMotorEnabled(enable:Bool) : Void;

	public function setMotorSpeed(speed:Float) : Void;

	public function setSpringDampingRatio(ratio:Float) : Void;

	public function setSpringFrequency(freq:Float) : Void;
}