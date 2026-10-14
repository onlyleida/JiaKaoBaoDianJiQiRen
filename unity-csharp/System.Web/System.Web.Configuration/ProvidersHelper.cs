using System.Collections.Specialized;
using System.Configuration;
using System.Configuration.Provider;
using System.Data.Common;
using System.Data.SqlClient;

namespace System.Web.Configuration;

public static class ProvidersHelper
{
	public static ProviderBase InstantiateProvider(ProviderSettings providerSettings, Type providerType)
	{
		Type type = HttpApplication.LoadType(providerSettings.Type);
		if (type == null)
		{
			throw new ConfigurationErrorsException($"Could not find type: {providerSettings.Type}");
		}
		if (!providerType.IsAssignableFrom(type))
		{
			throw new ConfigurationErrorsException($"Provider '{providerSettings.Name}' must subclass from '{providerType}'");
		}
		ProviderBase obj = Activator.CreateInstance(type) as ProviderBase;
		obj.Initialize(config: new NameValueCollection(providerSettings.Parameters), name: providerSettings.Name);
		return obj;
	}

	public static void InstantiateProviders(ProviderSettingsCollection configProviders, ProviderCollection providers, Type providerType)
	{
		if (!typeof(ProviderBase).IsAssignableFrom(providerType))
		{
			throw new ConfigurationErrorsException($"type '{providerType}' must subclass from ProviderBase");
		}
		foreach (ProviderSettings configProvider in configProviders)
		{
			providers.Add(InstantiateProvider(configProvider, providerType));
		}
	}

	internal static DbProviderFactory GetDbProviderFactory(string providerName)
	{
		DbProviderFactory dbProviderFactory = null;
		if (providerName != null && providerName != "")
		{
			try
			{
				dbProviderFactory = DbProviderFactories.GetFactory(providerName);
			}
			catch (Exception value)
			{
				Console.WriteLine(value);
			}
			if (dbProviderFactory != null)
			{
				return dbProviderFactory;
			}
		}
		return SqlClientFactory.Instance;
	}
}
