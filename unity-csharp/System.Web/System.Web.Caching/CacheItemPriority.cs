namespace System.Web.Caching;

public enum CacheItemPriority
{
	Low = 1,
	BelowNormal = 2,
	Normal = 3,
	Default = Normal,
	AboveNormal = 4,
	High = 5,
	NotRemovable = 6
}
