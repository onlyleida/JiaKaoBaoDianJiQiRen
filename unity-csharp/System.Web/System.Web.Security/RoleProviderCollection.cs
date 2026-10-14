using System.Configuration.Provider;

namespace System.Web.Security;

public sealed class RoleProviderCollection : ProviderCollection
{
	public new RoleProvider this[string name] => (RoleProvider)base[name];

	public override void Add(ProviderBase provider)
	{
		if (provider is RoleProvider)
		{
			base.Add(provider);
			return;
		}
		throw new HttpException();
	}

	public void CopyTo(RoleProvider[] array, int index)
	{
		CopyTo((ProviderBase[])array, index);
	}
}
