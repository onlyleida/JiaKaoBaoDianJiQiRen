using Unity;

namespace System.Web.Hosting;

public sealed class ProcessHostFactoryHelper : MarshalByRefObject, IProcessHostFactoryHelper
{
	public ProcessHostFactoryHelper()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public object GetProcessHost(IProcessHostSupportFunctions functions)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
