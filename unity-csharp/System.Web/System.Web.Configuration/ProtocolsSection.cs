using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class ProtocolsSection : ConfigurationSection
{
	public ProtocolCollection Protocols
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProtocolsSection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
