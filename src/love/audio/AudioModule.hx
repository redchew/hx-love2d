package love.audio;
import love.filesystem.File;
import love.filesystem.FileData;
import love.sound.Decoder;
import love.sound.SoundData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.audio")
extern class AudioModule
{

	public static function getActiveEffects() : Table<Dynamic,Dynamic>;

	public static function getActiveSourceCount() : Float;

	public static function getDistanceModel() : DistanceModel;

	public static function getDopplerScale() : Float;

	public static function getEffect(name:String) : Table<Dynamic,Dynamic>;

	public static function getMaxSceneEffects() : Float;

	public static function getMaxSourceEffects() : Float;

	public static function getOrientation() : AudioModuleGetOrientationResult;

	public static function getPosition() : AudioModuleGetPositionResult;

	public static function getRecordingDevices() : Table<Dynamic,Dynamic>;

	public static function getSourceCount() : Float;

	public static function getVelocity() : AudioModuleGetVelocityResult;

	public static function getVolume() : Float;

	public static function isEffectsSupported() : Bool;

	@:overload(function (file:File, type:SourceType) : Source {})
	@:overload(function (decoder:Decoder) : Source {})
	@:overload(function (fileData:FileData) : Source {})
	@:overload(function (soundData:SoundData) : Source {})
	public static function newSource(filename:String, type:SourceType) : Source;

	public static function newQueueableSource(samplerate:Float, bitdepth:Float, channels:Float, ?buffercount:Float) : Source;

	@:overload(function (source:Source) : Void {})
	public static function pause() : Void;

	public static function play(source:Source) : Void;

	public static function setDistanceModel(model:DistanceModel) : Void;

	public static function setDopplerScale(scale:Float) : Void;

	@:overload(function (name:String, ?enabled:Bool) : Bool {})
	public static function setEffect(name:String, settings:Table<Dynamic,Dynamic>) : Bool;

	public static function setMixWithSystem(mix:Bool) : Bool;

	public static function setOrientation(fx:Float, fy:Float, fz:Float, ux:Float, uy:Float, uz:Float) : Void;

	public static function setPosition(x:Float, y:Float, z:Float) : Void;

	public static function setVelocity(x:Float, y:Float, ?z:Float) : Void;

	public static function setVolume(volume:Float) : Void;

	@:overload(function (source:Source) : Void {})
	public static function stop() : Void;
}

@:multiReturn
extern class AudioModuleGetPositionResult
{
	var x : Float;
	var y : Float;
	var z : Float;
}

@:multiReturn
extern class AudioModuleGetVelocityResult
{
	var x : Float;
	var y : Float;
	var z : Float;
}

@:multiReturn
extern class AudioModuleGetOrientationResult
{
	var fx : Float;
	var fy : Float;
	var fz : Float;
	var ux : Float;
	var uy : Float;
	var uz : Float;
}