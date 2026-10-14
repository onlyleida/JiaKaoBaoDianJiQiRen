using System.Runtime.InteropServices;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing;

[StructLayout(LayoutKind.Explicit, Size = 16)]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public struct EventDescriptor
{
	public byte Channel
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int EventId
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public long Keywords
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public byte Level
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public byte Opcode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int Task
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
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

	public EventDescriptor(int id, byte version, byte channel, byte level, byte opcode, int task, long keywords)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
