using System.Configuration.Provider;

namespace System.Web;

public sealed class SiteMapProviderCollection : ProviderCollection
{
	public new SiteMapProvider this[string name] => (SiteMapProvider)base[name];

	public override void Add(ProviderBase provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		if (!(provider is SiteMapProvider))
		{
			throw new InvalidOperationException($"{provider.GetType()} must implement {typeof(SiteMapProvider)} to act as a site map provider");
		}
		if (this[provider.Name] != null)
		{
			throw new ArgumentException("Duplicate site map providers");
		}
		base.Add(provider);
	}

	public void Add(SiteMapProvider provider)
	{
		Add((ProviderBase)provider);
	}

	public void AddArray(SiteMapProvider[] providerArray)
	{
		foreach (SiteMapProvider provider in providerArray)
		{
			Add(provider);
		}
	}
}
