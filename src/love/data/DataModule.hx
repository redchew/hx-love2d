package love.data;
import love.Data;
import love.math.CompressedData;
import love.math.CompressedDataFormat;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.data")
extern class DataModule
{

	@:overload(function (container:ContainerType, format:CompressedDataFormat, data:Data, ?level:Float) : CompressedData or string {})
	public static function compress(container:ContainerType, format:CompressedDataFormat, rawstring:String, ?level:Float) : CompressedData or string;

	@:overload(function (containerType:ContainerType, format:EncodeFormat, sourceData:Data) : Dynamic {})
	public static function decode(containerType:ContainerType, format:EncodeFormat, sourceString:String) : Dynamic;

	@:overload(function (container:ContainerType, format:CompressedDataFormat, compressedstring:String) : String {})
	@:overload(function (container:ContainerType, format:CompressedDataFormat, data:Data) : String {})
	public static function decompress(container:ContainerType, compressedData:CompressedData) : String;

	@:overload(function (containerType:ContainerType, format:EncodeFormat, sourceData:Data, ?lineLength:Float) : Dynamic {})
	public static function encode(containerType:ContainerType, format:EncodeFormat, sourceString:String, ?lineLength:Float) : Dynamic;

	@:overload(function (hashFunction:HashFunction, data:Data) : String {})
	public static function hash(hashFunction:HashFunction, string:String) : String;
}