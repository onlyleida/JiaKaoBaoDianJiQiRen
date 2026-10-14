using System.Threading.Tasks;
using Unity;

namespace System.Web.Caching;

public abstract class OutputCacheProviderAsync : OutputCacheProvider
{
	protected OutputCacheProviderAsync()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract Task<object> AddAsync(string key, object entry, DateTime utcExpiry);

	public abstract Task<object> GetAsync(string key);

	public abstract Task RemoveAsync(string key);

	public abstract Task SetAsync(string key, object entry, DateTime utcExpiry);
}
