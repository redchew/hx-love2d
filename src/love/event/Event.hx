package love.event;
@:enum
abstract Event (String)
{
	var Focus = "focus";
	var Joystickpressed = "joystickpressed";
	var Joystickreleased = "joystickreleased";
	var Keypressed = "keypressed";
	var Keyreleased = "keyreleased";
	var Mousepressed = "mousepressed";
	var Mousereleased = "mousereleased";
	var Quit = "quit";
	var Resize = "resize";
	var Visible = "visible";
	var Mousefocus = "mousefocus";
	var Threaderror = "threaderror";
	var Joystickadded = "joystickadded";
	var Joystickremoved = "joystickremoved";
	var Joystickaxis = "joystickaxis";
	var Joystickhat = "joystickhat";
	var Gamepadpressed = "gamepadpressed";
	var Gamepadreleased = "gamepadreleased";
	var Gamepadaxis = "gamepadaxis";
	var Textinput = "textinput";
	var Mousemoved = "mousemoved";
	var Lowmemory = "lowmemory";
	var Textedited = "textedited";
	var Wheelmoved = "wheelmoved";
	var Touchpressed = "touchpressed";
	var Touchreleased = "touchreleased";
	var Touchmoved = "touchmoved";
	var Directorydropped = "directorydropped";
	var Filedropped = "filedropped";
	var Jp = "jp";
	var Jr = "jr";
	var Kp = "kp";
	var Kr = "kr";
	var Mp = "mp";
	var Mr = "mr";
	var Q = "q";
	var F = "f";
}