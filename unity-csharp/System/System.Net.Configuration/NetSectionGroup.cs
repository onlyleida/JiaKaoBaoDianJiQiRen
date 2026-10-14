using System.Configuration;

namespace System.Net.Configuration;

public sealed class NetSectionGroup : ConfigurationSectionGroup
{
	[ConfigurationProperty("authenticationModules")]
	public AuthenticationModulesSection AuthenticationModules => (AuthenticationModulesSection)Sections["authenticationModules"];

	[ConfigurationProperty("connectionManagement")]
	public ConnectionManagementSection ConnectionManagement => (ConnectionManagementSection)Sections["connectionManagement"];

	[ConfigurationProperty("defaultProxy")]
	public DefaultProxySection DefaultProxy => (DefaultProxySection)Sections["defaultProxy"];

	public MailSettingsSectionGroup MailSettings => (MailSettingsSectionGroup)SectionGroups["mailSettings"];

	[ConfigurationProperty("requestCaching")]
	public RequestCachingSection RequestCaching => (RequestCachingSection)Sections["requestCaching"];

	[ConfigurationProperty("settings")]
	public SettingsSection Settings => (SettingsSection)Sections["settings"];

	[ConfigurationProperty("webRequestModules")]
	public WebRequestModulesSection WebRequestModules => (WebRequestModulesSection)Sections["webRequestModules"];

	[MonoTODO]
	public NetSectionGroup()
	{
	}

	[MonoTODO]
	public static NetSectionGroup GetSectionGroup(System.Configuration.Configuration config)
	{
		throw new NotImplementedException();
	}
}
