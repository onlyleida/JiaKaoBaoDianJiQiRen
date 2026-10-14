using System.Configuration;
using System.Web.Configuration;

namespace System.Web;

public static class SiteMap
{
	private static SiteMapProvider provider;

	private static SiteMapProviderCollection providers;

	private static object locker = new object();

	public static SiteMapNode CurrentNode => Provider.CurrentNode;

	public static SiteMapNode RootNode => Provider.RootNode;

	public static SiteMapProvider Provider
	{
		get
		{
			Init();
			return provider;
		}
	}

	public static SiteMapProviderCollection Providers
	{
		get
		{
			Init();
			return providers;
		}
	}

	public static bool Enabled => ((SiteMapSection)WebConfigurationManager.GetSection("system.web/siteMap")).Enabled;

	public static event SiteMapResolveEventHandler SiteMapResolve
	{
		add
		{
			Provider.SiteMapResolve += value;
		}
		remove
		{
			Provider.SiteMapResolve -= value;
		}
	}

	private static void Init()
	{
		lock (locker)
		{
			if (provider == null)
			{
				SiteMapSection siteMapSection = (SiteMapSection)WebConfigurationManager.GetSection("system.web/siteMap");
				if (!siteMapSection.Enabled)
				{
					throw new InvalidOperationException("This feature is currently disabled.  Please enable it in the system.web/siteMap section in the web.config file.");
				}
				providers = siteMapSection.ProvidersInternal;
				providers.SetReadOnly();
				provider = providers[siteMapSection.DefaultProvider];
				if (provider == null)
				{
					throw new ConfigurationErrorsException($"The default sitemap provider '{siteMapSection.DefaultProvider}' does not exist in the provider collection.");
				}
			}
		}
	}
}
