namespace System.DirectoryServices.ActiveDirectory;

public enum ForestMode
{
	Windows2000Forest = 0,
	Windows2003InterimForest = 1,
	Windows2003Forest = 2,
	Windows2008Forest = 3,
	Windows2008R2Forest = 4,
	Unknown = -1,
	Windows2012R2Forest = 6,
	Windows8Forest = 5
}
