using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class PartialTrustVisibleAssembliesSection : ConfigurationSection
{
	public PartialTrustVisibleAssemblyCollection PartialTrustVisibleAssemblies
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public PartialTrustVisibleAssembliesSection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
