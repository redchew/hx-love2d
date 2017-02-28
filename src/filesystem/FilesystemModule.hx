package love.filesystem;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.filesystem")
extern class FilesystemModule
{

	public static function append(name:String, data:String, ?size:Float) : Bool;

	public static function areSymlinksEnabled() : Bool;

	public static function createDirectory(name:String) : Bool;

	public static function exists(filename:String) : Bool;

	public static function getAppdataDirectory() : String;

	public static function getDirectoryItems(dir:String) : Table<Dynamic,Dynamic>;

	public static function getIdentity(name:String) : Void;

	public static function getLastModified(filename:String) : Float;

	public static function getRealDirectory(filepath:String) : String;

	public static function getRequirePath() : String;

	public static function getSaveDirectory() : String;

	public static function getSize(filename:String) : Float;

	public static function getSourceBaseDirectory() : String;

	public static function getUserDirectory() : String;

	public static function getWorkingDirectory() : String;

	public static function isDirectory(path:String) : Bool;

	public static function isFile(path:String) : Bool;

	public static function isFused() : Bool;

	public static function isSymlink(path:String) : Bool;

	public static function lines(name:String) : Dynamic;

	public static function load(name:String) : Dynamic;

	@:overload(function (archive:String, mountpoint:String, ?appendToPath:String) : Bool {})
	public static function mount(archive:String, mountpoint:String) : Bool;

	public static function newFile(filename:String, ?mode:FileMode) : File;

	@:overload(function (filepath:String) : FileData {})
	public static function newFileData(contents:String, name:String, ?decoder:FileDecoder) : FileData;

	public static function read(name:String, ?bytes:Float) : String;

	public static function remove(name:String) : Bool;

	public static function setIdentity(name:String, ?appendToPath:Bool) : Void;

	public static function setRequirePath(paths:String) : Void;

	public static function setSource(path:String) : Void;

	public static function setSymlinksEnabled(enable:Bool) : Void;

	public static function unmount(archive:String) : Bool;

	public static function write(name:String, data:String, ?size:Float) : Bool;
}