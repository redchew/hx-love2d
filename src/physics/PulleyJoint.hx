package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class PulleyJoint extends Joint
{

	public function getConstant() : Float;

	public function getGroundAnchors() : Float;

	public function getLengthA() : Float;

	public function getLengthB() : Float;

	public function getMaxLengths() : Float;

	public function getRatio() : Float;

	public function setConstant(length:Float) : Void;

	public function setMaxLengths(max1:Float, max2:Float) : Void;

	public function setRatio(ratio:Float) : Void;
}