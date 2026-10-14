using System.Collections;
using System.Configuration.Provider;
using Unity;

namespace System.Web.Caching;

public abstract class CacheStoreProvider : ProviderBase, IDisposable
{
	public abstract long ItemCount { get; }

	public abstract long SizeInBytes { get; }

	protected CacheStoreProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract object Add(string key, object item, CacheInsertOptions options);

	public abstract bool AddDependent(string key, CacheDependency dependency, out DateTime utcLastUpdated);

	public abstract void Dispose();

	public abstract object Get(string key);

	public abstract IDictionaryEnumerator GetEnumerator();

	public abstract void Insert(string key, object item, CacheInsertOptions options);

	public abstract object Remove(string key);

	public abstract object Remove(string key, CacheItemRemovedReason reason);

	public abstract void RemoveDependent(string key, CacheDependency dependency);

	public abstract long Trim(int percent);
}
