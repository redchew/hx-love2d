package love.data;
import love.ByteData;
import love.Data;
import love.math.CompressedData;
import love.math.CompressedDataFormat;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.data")
extern class DataModule
{

	@:overload(function (container:ContainerType, format:CompressedDataFormat, data:Data, ?level:Float) : Dynamic {})
	public static function compress(container:ContainerType, format:CompressedDataFormat, rawstring:String, ?level:Float) : Dynamic;

	@:overload(function (container:ContainerType, format:EncodeFormat, sourceData:Data) : Dynamic {})
	public static function decode(container:ContainerType, format:EncodeFormat, sourceString:String) : Dynamic;

	@:overload(function (container:ContainerType, format:CompressedDataFormat, compressedString:String) : Dynamic {})
	@:overload(function (container:ContainerType, format:CompressedDataFormat, data:Data) : Dynamic {})
	public static function decompress(container:ContainerType, compressedData:CompressedData) : Dynamic;

	@:overload(function (container:ContainerType, format:EncodeFormat, sourceData:Data, ?linelength:Float) : Dynamic {})
	public static function encode(container:ContainerType, format:EncodeFormat, sourceString:String, ?linelength:Float) : Dynamic;

	public static function getPackedSize(format:String) : Float;

	@:overload(function (hashFunction:HashFunction, data:Data) : String {})
	public static function hash(hashFunction:HashFunction, string:String) : String;

	@:overload(function (Data:Data, ?offset:Float, ?size:Float) : ByteData {})
	@:overload(function (size:Float) : ByteData {})
	public static function newByteData(datastring:String) : ByteData;

	public static function newDataView(data:Data, offset:Float, size:Float) : Data;

	public static function pack(container:ContainerType, format:String, v1:Dynamic, args:Rest<Dynamic>) : Dynamic;

	@:overload(function (format:String, data:Data, ?pos:Float) : DataModuleUnpackResult {})
	public static function unpack(format:String, datastring:String, ?pos:Float) : DataModuleUnpackResult;
}

@:multiReturn
extern class DataModuleUnpackResult
{
	var v1 : Dynamic;
	var index : Float;
}