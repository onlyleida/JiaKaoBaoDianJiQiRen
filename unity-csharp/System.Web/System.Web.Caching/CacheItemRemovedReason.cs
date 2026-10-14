namespace System.Web.Caching;

public enum CacheItemRemovedReason
{
	Removed = 1,
	Expired,
	Underused,
	DependencyChanged
}
