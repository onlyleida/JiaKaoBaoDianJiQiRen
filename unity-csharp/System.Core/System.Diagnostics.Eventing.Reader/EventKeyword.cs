using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class EventKeyword
{
	public string DisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public long Value
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal EventKeyword()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
