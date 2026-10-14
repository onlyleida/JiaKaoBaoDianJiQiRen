using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public sealed class TypeSchema : IDataSourceSchema
{
	[System.MonoTODO]
	public TypeSchema(Type type)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public IDataSourceViewSchema[] GetViews()
	{
		throw new NotImplementedException();
	}
}
