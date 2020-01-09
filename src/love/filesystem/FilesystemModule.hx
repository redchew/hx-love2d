package love.filesystem;
import love.Data;
import love.data.ContainerType;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.filesystem")
extern class FilesystemModule
{

	@:overload(function (name:String, data:Data, ?size:Float) : FilesystemModuleAppendResult {})
	public static function append(name:String, data:String, ?size:Float) : FilesystemModuleAppendResult;

	public static function areSymlinksEnabled() : Bool;

	public static function createDirectory(name:String) : Bool;

	public static function getAppdataDirectory() : String;

	public static function getCRequirePath() : String;

	@:overload(function (dir:String, callback:Dynamic) : Table<Dynamic,Dynamic> {})
	public static function getDirectoryItems(dir:String) : Table<Dynamic,Dynamic>;

	public static function getIdentity() : String;

	@:overload(function (path:String, info:Table<Dynamic,Dynamic>) : Table<Dynamic,Dynamic> {})
	@:overload(function (path:String, filtertype:FileType, info:Table<Dynamic,Dynamic>) : Table<Dynamic,Dynamic> {})
	public static function getInfo(path:String, ?filtertype:FileType) : Table<Dynamic,Dynamic>;

	public static function getRealDirectory(filepath:String) : String;

	public static function getRequirePath() : String;

	public static function getSaveDirectory() : String;

	public static function getSource() : String;

	public static function getSourceBaseDirectory() : String;

	public static function getUserDirectory() : String;

	public static function getWorkingDirectory() : String;

	public static function init(appname:String) : Void;

	public static function isFused() : Bool;

	public static function lines(name:String) : Dynamic;

	public static function load(name:String) : FilesystemModuleLoadResult;

	@:overload(function (filedata:FileData, mountpoint:String, ?appendToPath:Bool) : Bool {})
	@:overload(function (data:Data, archivename:String, mountpoint:String, ?appendToPath:Bool) : Bool {})
	public static function mount(archive:String, mountpoint:String, ?appendToPath:Bool) : Bool;

	@:overload(function (filename:String, mode:FileMode) : FilesystemModuleNewFileResult {})
	public static function newFile(filename:String) : File;

	@:overload(function (filepath:String) : FilesystemModuleNewFileDataResult {})
	public static function newFileData(contents:String, name:String) : FileData;

	@:overload(function (container:ContainerType, name:String, ?size:Float) : FilesystemModuleReadResult {})
	public static function read(name:String, ?size:Float) : FilesystemModuleReadResult;

	public static function remove(name:String) : Bool;

	public static function setCRequirePath(paths:String) : Void;

	@:overload(function (name:String) : Void {})
	public static function setIdentity(name:String) : Void;

	public static function setRequirePath(paths:String) : Void;

	public static function setSource(path:String) : Void;

	public static function setSymlinksEnabled(enable:Bool) : Void;

	public static function unmount(archive:String) : Bool;

	@:overload(function (name:String, data:Data, ?size:Float) : FilesystemModuleWriteResult {})
	public static function write(name:String, data:String, ?size:Float) : FilesystemModuleWriteResult;
}

@:multiReturn
extern class FilesystemModuleReadResult
{
	var contents : Dynamic;
	var size : Float;
	var contents : nil;
	var error : String;
}

@:multiReturn
extern class FilesystemModuleWriteResult
{
	var success : Bool;
	var message : String;
}

@:multiReturn
extern class FilesystemModuleAppendResult
{
	var success : Bool;
	var errormsg : String;
}

@:multiReturn
extern class FilesystemModuleNewFileDataResult
{
	var data : FileData;
	var err : String;
}

@:multiReturn
extern class FilesystemModuleLoadResult
{
	var chunk : Dynamic;
	var errormsg : String;
}

@:multiReturn
extern class FilesystemModuleNewFileResult
{
	var file : File;
	var errorstr : String;
}