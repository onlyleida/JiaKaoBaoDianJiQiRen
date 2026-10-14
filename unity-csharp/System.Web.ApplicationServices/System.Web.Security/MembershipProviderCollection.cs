using System.Configuration.Provider;
using System.Globalization;
using System.Runtime.CompilerServices;

namespace System.Web.Security;

[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class MembershipProviderCollection : ProviderCollection
{
	public new MembershipProvider this[string name] => (MembershipProvider)base[name];

	public override void Add(ProviderBase provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		if (!(provider is MembershipProvider))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "Provider must implement the class '{0}'.", typeof(MembershipProvider).ToString()), "provider");
		}
		base.Add(provider);
	}

	public void CopyTo(MembershipProvider[] array, int index)
	{
		CopyTo((ProviderBase[])array, index);
	}
}
