package love.sound;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class SoundData extends Data
{

	public function getBitDepth() : Float;

	public function getChannelCount() : Float;

	public function getDuration() : Float;

	@:overload(function (i:Float, channel:Float) : Float {})
	public function getSample(i:Float) : Float;

	public function getSampleCount() : Float;

	public function getSampleRate() : Float;

	@:overload(function (i:Float, channel:Float, sample:Float) : Void {})
	public function setSample(i:Float, sample:Float) : Void;
}