using System.Security.Permissions;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ProcessModelInfo
{
	[MonoTODO("Retrieve appropriate variables from worker")]
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.High)]
	public static ProcessInfo GetCurrentProcessInfo()
	{
		DateTime now = DateTime.Now;
		TimeSpan zero = TimeSpan.Zero;
		int processID = 0;
		int requestCount = 0;
		ProcessStatus status = ProcessStatus.Terminated;
		ProcessShutdownReason shutdownReason = ProcessShutdownReason.None;
		int peakMemoryUsed = 0;
		return new ProcessInfo(now, zero, processID, requestCount, status, shutdownReason, peakMemoryUsed);
	}

	[MonoTODO("Retrieve process information.")]
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.High)]
	public static ProcessInfo[] GetHistory(int numRecords)
	{
		throw new NotImplementedException();
	}
}
