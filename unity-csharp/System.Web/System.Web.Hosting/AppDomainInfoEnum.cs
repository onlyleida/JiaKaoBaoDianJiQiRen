using Unity;

namespace System.Web.Hosting;

public class AppDomainInfoEnum : IAppDomainInfoEnum
{
	internal AppDomainInfoEnum()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int Count()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public IAppDomainInfo GetData()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool MoveNext()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void Reset()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
