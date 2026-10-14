using System.Security.Permissions;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ProcessInfo
{
	private TimeSpan age;

	private int peakMemoryUsed;

	private int processID;

	private int requestCount;

	private ProcessShutdownReason shutdownReason;

	private DateTime startTime;

	private ProcessStatus status;

	public TimeSpan Age => age;

	public int PeakMemoryUsed => peakMemoryUsed;

	public int ProcessID => processID;

	public int RequestCount => requestCount;

	public ProcessShutdownReason ShutdownReason => shutdownReason;

	public DateTime StartTime => startTime;

	public ProcessStatus Status => status;

	public ProcessInfo()
	{
	}

	public ProcessInfo(DateTime startTime, TimeSpan age, int processID, int requestCount, ProcessStatus status, ProcessShutdownReason shutdownReason, int peakMemoryUsed)
	{
		this.age = age;
		this.peakMemoryUsed = peakMemoryUsed;
		this.processID = processID;
		this.requestCount = requestCount;
		this.shutdownReason = shutdownReason;
		this.startTime = startTime;
		this.status = status;
	}

	public void SetAll(DateTime startTime, TimeSpan age, int processID, int requestCount, ProcessStatus status, ProcessShutdownReason shutdownReason, int peakMemoryUsed)
	{
		this.age = age;
		this.peakMemoryUsed = peakMemoryUsed;
		this.processID = processID;
		this.requestCount = requestCount;
		this.shutdownReason = shutdownReason;
		this.startTime = startTime;
		this.status = status;
	}
}
