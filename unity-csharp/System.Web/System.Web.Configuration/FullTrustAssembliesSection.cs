using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class FullTrustAssembliesSection : ConfigurationSection
{
	public FullTrustAssemblyCollection FullTrustAssemblies
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public FullTrustAssembliesSection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
