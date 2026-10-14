using System.Security.Permissions;

namespace System.DirectoryServices;

[Serializable]
public class DirectoryServicesPermissionEntry
{
	private DirectoryServicesPermissionAccess permissionAccess;

	private string path;

	public string Path => path;

	public DirectoryServicesPermissionAccess PermissionAccess => permissionAccess;

	public DirectoryServicesPermissionEntry(DirectoryServicesPermissionAccess permissionAccess, string path)
	{
		this.permissionAccess = permissionAccess;
		this.path = path;
	}

	internal ResourcePermissionBaseEntry GetBaseEntry()
	{
		return new ResourcePermissionBaseEntry((int)permissionAccess, new string[1] { path });
	}
}
