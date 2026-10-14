using System.Collections.Generic;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class EventMetadata
{
	public string Description
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public long Id
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public IEnumerable<EventKeyword> Keywords
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<EventKeyword>)0;
		}
	}

	public EventLevel Level
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EventLogLink LogLink
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EventOpcode Opcode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EventTask Task
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string Template
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public byte Version
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal EventMetadata()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
