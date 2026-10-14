using System.Configuration;
using System.Configuration.Provider;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Security.Permissions;
using System.Web.Configuration;

namespace System.Web.Caching;

public static class OutputCache
{
	internal const string DEFAULT_PROVIDER_NAME = "AspNetInternalProvider";

	private static readonly object initLock = new object();

	private static readonly object defaultProviderInitLock = new object();

	private static bool initialized;

	private static string defaultProviderName;

	private static OutputCacheProviderCollection providers;

	private static OutputCacheProvider defaultProvider;

	public static string DefaultProviderName
	{
		get
		{
			Init();
			if (string.IsNullOrEmpty(defaultProviderName))
			{
				return "AspNetInternalProvider";
			}
			return defaultProviderName;
		}
	}

	internal static OutputCacheProvider DefaultProvider
	{
		get
		{
			if (defaultProvider == null)
			{
				lock (defaultProviderInitLock)
				{
					if (defaultProvider == null)
					{
						defaultProvider = new InMemoryOutputCacheProvider();
					}
				}
			}
			return defaultProvider;
		}
	}

	public static OutputCacheProviderCollection Providers
	{
		get
		{
			Init();
			return providers;
		}
	}

	[SecurityPermission(SecurityAction.Assert, Flags = SecurityPermissionFlag.SerializationFormatter)]
	public static object Deserialize(Stream stream)
	{
		if (stream == null)
		{
			throw new ArgumentNullException("stream");
		}
		object obj = new BinaryFormatter().Deserialize(stream);
		if (obj == null || IsInvalidType(obj))
		{
			throw new ArgumentException("The provided parameter is not of a supported type for serialization and/or deserialization.");
		}
		return obj;
	}

	[SecurityPermission(SecurityAction.Assert, Flags = SecurityPermissionFlag.SerializationFormatter)]
	public static void Serialize(Stream stream, object data)
	{
		if (stream == null)
		{
			throw new ArgumentNullException("stream");
		}
		if (data == null || IsInvalidType(data))
		{
			throw new ArgumentException("The provided parameter is not of a supported type for serialization and/or deserialization.");
		}
		new BinaryFormatter().Serialize(stream, data);
	}

	internal static OutputCacheProvider GetProvider(string providerName)
	{
		if (string.IsNullOrEmpty(providerName))
		{
			return null;
		}
		if (string.Compare(providerName, "AspNetInternalProvider", StringComparison.Ordinal) == 0)
		{
			return DefaultProvider;
		}
		return Providers?[providerName];
	}

	private static bool IsInvalidType(object data)
	{
		if (!(data is MemoryResponseElement) && !(data is FileResponseElement))
		{
			return !(data is SubstitutionResponseElement);
		}
		return false;
	}

	private static void Init()
	{
		if (initialized)
		{
			return;
		}
		lock (initLock)
		{
			if (initialized)
			{
				return;
			}
			OutputCacheSection obj = WebConfigurationManager.GetWebApplicationSection("system.web/caching/outputCache") as OutputCacheSection;
			ProviderSettingsCollection providerSettingsCollection = obj.Providers;
			defaultProviderName = obj.DefaultProviderName;
			if (providerSettingsCollection != null && providerSettingsCollection.Count > 0)
			{
				OutputCacheProviderCollection outputCacheProviderCollection = new OutputCacheProviderCollection();
				foreach (ProviderSettings item in providerSettingsCollection)
				{
					outputCacheProviderCollection.Add(LoadProvider(item));
				}
				outputCacheProviderCollection.SetReadOnly();
				providers = outputCacheProviderCollection;
			}
			initialized = true;
		}
	}

	private static OutputCacheProvider LoadProvider(ProviderSettings ps)
	{
		Type type = HttpApplication.LoadType(ps.Type, throwOnMissing: false);
		if (type == null)
		{
			throw new ConfigurationErrorsException($"Could not load type '{ps.Type}'.");
		}
		OutputCacheProvider obj = Activator.CreateInstance(type) as OutputCacheProvider;
		obj.Initialize(ps.Name, ps.Parameters);
		return obj;
	}

	internal static void RemoveFromProvider(string key, string providerName)
	{
		if (providerName != null)
		{
			OutputCacheProviderCollection outputCacheProviderCollection = Providers;
			OutputCacheProvider outputCacheProvider = ((outputCacheProviderCollection != null && outputCacheProviderCollection.Count != 0) ? outputCacheProviderCollection[providerName] : null);
			if (outputCacheProvider == null)
			{
				throw new ProviderException("Provider '" + providerName + "' was not found.");
			}
			outputCacheProvider.Remove(key);
		}
	}
}
