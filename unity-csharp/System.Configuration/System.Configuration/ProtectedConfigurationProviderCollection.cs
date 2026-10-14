using System.Configuration.Provider;

namespace System.Configuration;

public class ProtectedConfigurationProviderCollection : ProviderCollection
{
	[MonoTODO]
	public new ProtectedConfigurationProvider this[string name] => (ProtectedConfigurationProvider)base[name];

	[MonoTODO]
	public override void Add(ProviderBase provider)
	{
		base.Add(provider);
	}
}
