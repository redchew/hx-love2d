package love.filesystem;
import love.Data;
import love.data.ContainerType;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class DroppedFile extends Object
{

	public function close() : Bool;

	public function flush() : DroppedFileFlushResult;

	public function getBuffer() : DroppedFileGetBufferResult;

	public function getFilename() : String;

	public function getMode() : FileMode;

	public function getSize() : Float;

	public function isEOF() : Bool;

	public function isOpen() : Bool;

	public function lines() : Dynamic;

	public function open(mode:FileMode) : DroppedFileOpenResult;

	@:overload(function (container:ContainerType, ?bytes:Float) : DroppedFileReadResult {})
	public function read(?bytes:Float) : DroppedFileReadResult;

	public function seek(pos:Float) : Bool;

	public function setBuffer(mode:BufferMode, ?size:Float) : DroppedFileSetBufferResult;

	public function tell() : Float;

	@:overload(function (data:Data, ?size:Float) : DroppedFileWriteResult {})
	public function write(data:String, ?size:Float) : DroppedFileWriteResult;
}

@:multiReturn
extern class DroppedFileReadResult
{
	var contents : Dynamic;
	var size : Float;
}

@:multiReturn
extern class DroppedFileSetBufferResult
{
	var success : Bool;
	var errorstr : String;
}

@:multiReturn
extern class DroppedFileWriteResult
{
	var success : Bool;
	var errorstr : String;
}

@:multiReturn
extern class DroppedFileFlushResult
{
	var success : Bool;
	var err : String;
}

@:multiReturn
extern class DroppedFileOpenResult
{
	var ok : Bool;
	var err : String;
}

@:multiReturn
extern class DroppedFileGetBufferResult
{
	var mode : BufferMode;
	var size : Float;
}