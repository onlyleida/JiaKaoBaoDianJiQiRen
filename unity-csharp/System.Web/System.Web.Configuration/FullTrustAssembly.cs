using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class FullTrustAssembly : ConfigurationElement
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

	public string Version
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

	public FullTrustAssembly(string assemblyName, string version, string publicKey)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
