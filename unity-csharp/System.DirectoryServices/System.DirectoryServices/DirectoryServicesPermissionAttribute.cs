using System.Security;
using System.Security.Permissions;

namespace System.DirectoryServices;

[Serializable]
[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Constructor | AttributeTargets.Method | AttributeTargets.Event, AllowMultiple = true, Inherited = false)]
public class DirectoryServicesPermissionAttribute : CodeAccessSecurityAttribute
{
	private string path;

	private DirectoryServicesPermissionAccess access;

	public string Path
	{
		get
		{
			return path;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("Path");
			}
			path = value;
		}
	}

	public DirectoryServicesPermissionAccess PermissionAccess
	{
		get
		{
			return access;
		}
		set
		{
			access = value;
		}
	}

	public DirectoryServicesPermissionAttribute(SecurityAction action)
		: base(action)
	{
		path = "*";
		access = DirectoryServicesPermissionAccess.Browse;
	}

	public override IPermission CreatePermission()
	{
		if (Unrestricted)
		{
			return new DirectoryServicesPermission(PermissionState.Unrestricted);
		}
		return new DirectoryServicesPermission(access, path);
	}
}
