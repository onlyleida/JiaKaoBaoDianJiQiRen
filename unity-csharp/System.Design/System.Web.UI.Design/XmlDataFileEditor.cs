using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class XmlDataFileEditor : UrlEditor
{
	[System.MonoTODO]
	protected override string Caption
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected override string Filter
	{
		get
		{
			throw new NotImplementedException();
		}
	}
}
