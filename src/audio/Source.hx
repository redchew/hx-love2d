package love.audio;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Source extends Object
{

	public function clone() : Source;

	public function getAttenuationDistances() : Float;

	public function getChannels() : Float;

	public function getCone() : Float;

	public function getDirection() : Float;

	public function getDuration(?unit:TimeUnit) : Float;

	public function getPitch() : Float;

	public function getPosition() : Float;

	public function getRolloff() : Float;

	public function getType() : SourceType;

	public function getVelocity() : Float;

	public function getVolume() : Float;

	public function getVolumeLimits() : Float;

	public function isLooping() : Bool;

	public function isPaused() : Bool;

	public function isPlaying() : Bool;

	public function isStopped() : Bool;

	public function pause() : Void;

	public function play() : Bool;

	public function resume() : Void;

	public function rewind() : Void;

	public function seek(position:Float, ?unit:TimeUnit) : Void;

	public function setDirection(x:Float, y:Float, z:Float) : Void;

	public function setAttenuationDistances(ref:Float, max:Float) : Void;

	public function setCone(innerAngle:Float, outerAngle:Float, ?outerVolume:Float) : Void;

	public function setLooping(loop:Bool) : Void;

	public function setPitch(pitch:Float) : Void;

	public function setPosition(x:Float, y:Float, z:Float) : Void;

	public function setRolloff(rolloff:Float) : Void;

	public function setVelocity(x:Float, y:Float, z:Float) : Void;

	public function setVolume(volume:Float) : Void;

	public function setVolumeLimits(min:Float, max:Float) : Void;

	public function stop() : Void;

	public function tell(?unit:TimeUnit) : Float;
}