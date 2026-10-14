using Unity;

namespace System.Web.Hosting;

public class AppDomainInfo : IAppDomainInfo
{
	internal AppDomainInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string GetId()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public string GetPhysicalPath()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public int GetSiteId()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public string GetVirtualPath()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool IsIdle()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
