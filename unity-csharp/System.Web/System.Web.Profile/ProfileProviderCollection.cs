using System.Configuration;
using System.Configuration.Provider;

namespace System.Web.Profile;

public sealed class ProfileProviderCollection : SettingsProviderCollection
{
	public new ProfileProvider this[string name] => (ProfileProvider)base[name];

	public override void Add(ProviderBase provider)
	{
		base.Add(provider);
	}
}
