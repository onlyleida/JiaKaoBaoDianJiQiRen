using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class AccessDataSourceDesigner : SqlDataSourceDesigner
{
	public string DataFile
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public AccessDataSourceDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetConnectionString()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
