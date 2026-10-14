using System.Security.Permissions;
using Unity;

namespace System.Diagnostics;

[HostProtection(SecurityAction.LinkDemand, Synchronization = true)]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventSchemaTraceListener : TextWriterTraceListener
{
	public int BufferSize
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public long MaximumFileSize
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public int MaximumNumberOfFiles
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public TraceLogRetentionOption TraceLogRetentionOption
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public EventSchemaTraceListener(string fileName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventSchemaTraceListener(string fileName, string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventSchemaTraceListener(string fileName, string name, int bufferSize)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventSchemaTraceListener(string fileName, string name, int bufferSize, TraceLogRetentionOption logRetentionOption)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventSchemaTraceListener(string fileName, string name, int bufferSize, TraceLogRetentionOption logRetentionOption, long maximumFileSize)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventSchemaTraceListener(string fileName, string name, int bufferSize, TraceLogRetentionOption logRetentionOption, long maximumFileSize, int maximumNumberOfFiles)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
