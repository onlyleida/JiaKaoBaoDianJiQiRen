using System.Configuration.Provider;

namespace System.Web.Caching;

public sealed class OutputCacheProviderCollection : ProviderCollection
{
	public new OutputCacheProvider this[string name] => (OutputCacheProvider)base[name];

	public override void Add(ProviderBase provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		if (!(provider is OutputCacheProvider))
		{
			throw new ArgumentException(SR.GetString("Provider must implement the class '{0}'.", typeof(OutputCacheProvider).Name), "provider");
		}
		base.Add(provider);
	}

	public void CopyTo(OutputCacheProvider[] array, int index)
	{
		CopyTo((ProviderBase[])array, index);
	}
}
