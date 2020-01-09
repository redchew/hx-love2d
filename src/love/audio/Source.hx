package love.audio;
import love.sound.SoundData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class Source extends Object
{

	public function clone() : Source;

	public function getActiveEffects() : Table<Dynamic,Dynamic>;

	public function getAirAbsorption() : Float;

	public function getAttenuationDistances() : SourceGetAttenuationDistancesResult;

	public function getChannelCount() : Float;

	public function getCone() : SourceGetConeResult;

	public function getDirection() : SourceGetDirectionResult;

	public function getDuration(?unit:TimeUnit) : Float;

	public function getEffect(name:String, ?filtersettings:Table<Dynamic,Dynamic>) : Table<Dynamic,Dynamic>;

	public function getFilter() : Table<Dynamic,Dynamic>;

	public function getFreeBufferCount() : Float;

	public function getPitch() : Float;

	public function getPosition() : SourceGetPositionResult;

	public function getRolloff() : Float;

	public function getType() : SourceType;

	public function getVelocity() : SourceGetVelocityResult;

	public function getVolume() : Float;

	public function getVolumeLimits() : SourceGetVolumeLimitsResult;

	public function isLooping() : Bool;

	public function isPlaying() : Bool;

	public function isRelative() : Bool;

	public function pause() : Void;

	public function play() : Bool;

	public function queue(sounddata:SoundData) : Bool;

	public function seek(offset:Float, ?unit:TimeUnit) : Void;

	public function setAirAbsorption(amount:Float) : Void;

	public function setAttenuationDistances(ref:Float, max:Float) : Void;

	public function setCone(innerAngle:Float, outerAngle:Float, ?outerVolume:Float) : Void;

	public function setDirection(x:Float, y:Float, z:Float) : Void;

	@:overload(function (name:String, filtersettings:Table<Dynamic,Dynamic>) : Bool {})
	public function setEffect(name:String, ?enable:Bool) : Bool;

	@:overload(function () : Void {})
	public function setFilter(settings:Table<Dynamic,Dynamic>) : Bool;

	public function setLooping(loop:Bool) : Void;

	public function setPitch(pitch:Float) : Void;

	public function setPosition(x:Float, y:Float, z:Float) : Void;

	public function setRelative(?enable:Bool) : Void;

	public function setRolloff(rolloff:Float) : Void;

	public function setVelocity(x:Float, y:Float, z:Float) : Void;

	public function setVolume(volume:Float) : Void;

	public function setVolumeLimits(min:Float, max:Float) : Void;

	public function stop() : Void;

	public function tell(?unit:TimeUnit) : Float;
}

@:multiReturn
extern class SourceGetVolumeLimitsResult
{
	var min : Float;
	var max : Float;
}

@:multiReturn
extern class SourceGetConeResult
{
	var innerAngle : Float;
	var outerAngle : Float;
	var outerVolume : Float;
}

@:multiReturn
extern class SourceGetPositionResult
{
	var x : Float;
	var y : Float;
	var z : Float;
}

@:multiReturn
extern class SourceGetVelocityResult
{
	var x : Float;
	var y : Float;
	var z : Float;
}

@:multiReturn
extern class SourceGetDirectionResult
{
	var x : Float;
	var y : Float;
	var z : Float;
}

@:multiReturn
extern class SourceGetAttenuationDistancesResult
{
	var ref : Float;
	var max : Float;
}