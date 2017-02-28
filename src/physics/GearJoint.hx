package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class GearJoint extends Joint
{

	public function getJoints() : Joint;

	public function getRatio() : Float;

	public function setRatio(ratio:Float) : Void;
}