package love.audio;
import love.sound.SoundData;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class RecordingDevice extends Object
{

	public function getBitDepth() : Float;

	public function getChannelCount() : Float;

	public function getData() : SoundData;

	public function getName() : String;

	public function getSampleCount() : Float;

	public function getSampleRate() : Float;

	public function isRecording() : Bool;

	public function start(samplecount:Float, ?samplerate:Float, ?bitdepth:Float, ?channels:Float) : Bool;

	public function stop() : SoundData;
}