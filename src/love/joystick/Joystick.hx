package love.joystick;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Joystick extends Object
{

	public function getAxes() : Float;

	public function getAxis(axis:Float) : Float;

	public function getAxisCount() : Float;

	public function getButtonCount() : Float;

	public function getGUID() : String;

	public function getGamepadAxis(axis:GamepadAxis) : Float;

	@:overload(function (button:GamepadAxis) : JoystickInputType {})
	public function getGamepadMapping(axis:GamepadAxis) : JoystickInputType;

	public function getHat(hat:Float) : JoystickHat;

	public function getHatCount() : Float;

	public function getID() : Float;

	public function getName() : String;

	public function getVibration() : Float;

	public function isConnected() : Bool;

	public function isDown(args:Rest<Float>) : Bool;

	public function isGamepad() : Bool;

	public function isGamepadDown(args:Rest<GamepadButton>) : Bool;

	public function isVibrationSupported() : Bool;

	@:overload(function () : Bool {})
	@:overload(function (left:Float, right:Float, duration:Float) : Bool {})
	public function setVibration(left:Float, right:Float) : Bool;
}