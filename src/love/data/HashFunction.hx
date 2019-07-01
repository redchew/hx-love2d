package love.data;
@:enum
abstract HashFunction (String)
{
	var Md5 = "md5";
	var Sha1 = "sha1";
	var Sha224 = "sha224";
	var Sha256 = "sha256";
	var Sha384 = "sha384";
	var Sha512 = "sha512";
}