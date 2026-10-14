using System.Security.Permissions;

namespace System.Web.SessionState;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class StateRuntime : IStateRuntime
{
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Minimal)]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public StateRuntime()
	{
	}

	[MonoTODO("Not implemented")]
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
	public void ProcessRequest(IntPtr tracker, int verb, string uri, int exclusive, int timeout, int lockCookieExists, int lockCookie, int contentLength, IntPtr content)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
	public void ProcessRequest(IntPtr tracker, int verb, string uri, int exclusive, int extraFlags, int timeout, int lockCookieExists, int lockCookie, int contentLength, IntPtr content)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public void StopProcessing()
	{
		throw new NotImplementedException();
	}
}
