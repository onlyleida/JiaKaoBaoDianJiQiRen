using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class HierarchicalDataSourceConverter : DataSourceConverter
{
	[System.MonoTODO]
	protected override bool IsValidDataSource(IComponent component)
	{
		throw new NotImplementedException();
	}
}
