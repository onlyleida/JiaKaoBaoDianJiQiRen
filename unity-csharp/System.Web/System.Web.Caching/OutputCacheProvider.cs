using System.Configuration.Provider;

namespace System.Web.Caching;

public abstract class OutputCacheProvider : ProviderBase
{
	public abstract object Add(string key, object entry, DateTime utcExpiry);

	public abstract object Get(string key);

	public abstract void Remove(string key);

	public abstract void Set(string key, object entry, DateTime utcExpiry);
}
