package love.filesystem;
@:enum
abstract FileType (String)
{
	var File = "file";
	var Directory = "directory";
	var Symlink = "symlink";
	var Other = "other";
}