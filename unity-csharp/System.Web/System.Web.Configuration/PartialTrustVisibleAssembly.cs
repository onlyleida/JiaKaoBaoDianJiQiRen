using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class PartialTrustVisibleAssembly : ConfigurationElement
{
	public string AssemblyName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string PublicKey
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public PartialTrustVisibleAssembly(string assemblyName, string publicKey)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
