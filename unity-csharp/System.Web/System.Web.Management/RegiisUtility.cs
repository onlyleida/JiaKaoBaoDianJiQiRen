using System.Security.Permissions;
using Unity;

namespace System.Web.Management;

public sealed class RegiisUtility : IRegiisUtility
{
	public RegiisUtility()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ProtectedConfigAction(long options, string firstArgument, string secondArgument, string providerName, string appPath, string site, string cspOrLocation, int keySize, out IntPtr exception)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
	public void RegisterAsnetMmcAssembly(int doReg, string typeName, string binaryDirectory, out IntPtr exception)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RegisterSystemWebAssembly(int doReg, out IntPtr exception)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RemoveBrowserCaps(out IntPtr exception)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
