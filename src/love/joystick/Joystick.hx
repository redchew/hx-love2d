package love.joystick;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Joystick extends Object
{

	public function getAxes() : JoystickGetAxesResult;

	public function getAxis(axis:Float) : Float;

	public function getAxisCount() : Float;

	public function getButtonCount() : Float;

	public function getDeviceInfo() : JoystickGetDeviceInfoResult;

	public function getGUID() : String;

	public function getGamepadAxis(axis:GamepadAxis) : Float;

	@:overload(function (button:GamepadButton) : JoystickGetGamepadMappingResult {})
	public function getGamepadMapping(axis:GamepadAxis) : JoystickGetGamepadMappingResult;

	public function getGamepadMappingString() : String;

	public function getHat(hat:Float) : JoystickHat;

	public function getHatCount() : Float;

	public function getID() : JoystickGetIDResult;

	public function getName() : String;

	public function getVibration() : JoystickGetVibrationResult;

	public function isConnected() : Bool;

	public function isDown(buttonN:Float) : Bool;

	public function isGamepad() : Bool;

	public function isGamepadDown(buttonN:GamepadButton) : Bool;

	public function isVibrationSupported() : Bool;

	@:overload(function () : Bool {})
	@:overload(function (left:Float, right:Float, ?duration:Float) : Bool {})
	public function setVibration(left:Float, right:Float) : Bool;
}

@:multiReturn
extern class JoystickGetAxesResult
{
	var axisDir1 : Float;
	var axisDir2 : Float;
	var axisDirN : Float;
}

@:multiReturn
extern class JoystickGetIDResult
{
	var id : Float;
	var instanceid : Float;
}

@:multiReturn
extern class JoystickGetDeviceInfoResult
{
	var vendorID : Float;
	var productID : Float;
	var productVersion : Float;
}

@:multiReturn
extern class JoystickGetVibrationResult
{
	var left : Float;
	var right : Float;
}

@:multiReturn
extern class JoystickGetGamepadMappingResult
{
	var inputtype : JoystickInputType;
	var inputindex : Float;
	var hatdirection : JoystickHat;
}