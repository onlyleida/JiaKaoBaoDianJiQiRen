using System.Security.Permissions;
using Unity;

namespace System.Web.Management;

public static class WebEventManager
{
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	public static void Flush()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	public static void Flush(string providerName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
