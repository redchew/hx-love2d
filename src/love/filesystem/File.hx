package love.filesystem;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class File extends Object
{

	public function close() : Bool;

	public function flush() : Bool;

	public function getBuffer() : BufferMode;

	public function getFilename() : String;

	public function getMode() : FileMode;

	public function getSize() : Float;

	public function isEOF() : Bool;

	public function isOpen() : Bool;

	public function lines() : Dynamic;

	public function open(mode:FileMode) : Bool;

	public function read(?bytes:Float) : String;

	public function seek(position:Float) : Bool;

	public function setBuffer(mode:BufferMode, size:Float) : Bool;

	public function write(data:String, ?size:Float) : Bool;
}