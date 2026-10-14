using System.Security.Permissions;

namespace System.Web.Hosting;

public sealed class ISAPIRuntime : MarshalByRefObject, IISAPIRuntime, IRegisteredObject
{
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Minimal)]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public ISAPIRuntime()
	{
	}

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public void DoGCCollect()
	{
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public int ProcessRequest(IntPtr ecb, int iWRType)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public void StartProcessing()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public void StopProcessing()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override object InitializeLifetimeService()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	void IRegisteredObject.Stop(bool immediate)
	{
		throw new NotImplementedException();
	}
}
