using System.Configuration;

namespace System.Web.Configuration;

public sealed class SystemWebCachingSectionGroup : ConfigurationSectionGroup
{
	[ConfigurationProperty("cache")]
	public CacheSection Cache => (CacheSection)Sections["cache"];

	[ConfigurationProperty("outputCache")]
	public OutputCacheSection OutputCache => (OutputCacheSection)Sections["outputCache"];

	[ConfigurationProperty("outputCacheSettings")]
	public OutputCacheSettingsSection OutputCacheSettings => (OutputCacheSettingsSection)Sections["outputCacheSettings"];

	[ConfigurationProperty("sqlCacheDependency")]
	public SqlCacheDependencySection SqlCacheDependency => (SqlCacheDependencySection)Sections["sqlCacheDependency"];
}
