using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class EventLogLink
{
	public string DisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool IsImported
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string LogName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal EventLogLink()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
