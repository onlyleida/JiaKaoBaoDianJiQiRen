using System.Security.Permissions;

namespace System.DirectoryServices;

[Serializable]
public sealed class DirectoryServicesPermission : ResourcePermissionBase
{
	private DirectoryServicesPermissionEntryCollection innerCollection;

	public DirectoryServicesPermissionEntryCollection PermissionEntries
	{
		get
		{
			if (innerCollection == null)
			{
				innerCollection = new DirectoryServicesPermissionEntryCollection(this);
			}
			return innerCollection;
		}
	}

	public DirectoryServicesPermission()
	{
		SetUp();
	}

	public DirectoryServicesPermission(DirectoryServicesPermissionEntry[] permissionAccessEntries)
	{
		SetUp();
		innerCollection = new DirectoryServicesPermissionEntryCollection(this);
		innerCollection.AddRange(permissionAccessEntries);
	}

	public DirectoryServicesPermission(PermissionState state)
		: base(state)
	{
		SetUp();
	}

	public DirectoryServicesPermission(DirectoryServicesPermissionAccess permissionAccess, string path)
	{
		SetUp();
		innerCollection = new DirectoryServicesPermissionEntryCollection(this);
		innerCollection.Add(new DirectoryServicesPermissionEntry(permissionAccess, path));
	}

	private void SetUp()
	{
		PermissionAccessType = typeof(DirectoryServicesPermissionAccess);
		TagNames = new string[1] { "Path" };
	}

	internal ResourcePermissionBaseEntry[] GetEntries()
	{
		return GetPermissionEntries();
	}

	internal void ClearEntries()
	{
		Clear();
	}

	internal void Add(object obj)
	{
		DirectoryServicesPermissionEntry directoryServicesPermissionEntry = obj as DirectoryServicesPermissionEntry;
		AddPermissionAccess(directoryServicesPermissionEntry.GetBaseEntry());
	}

	internal void Remove(object obj)
	{
		DirectoryServicesPermissionEntry directoryServicesPermissionEntry = obj as DirectoryServicesPermissionEntry;
		RemovePermissionAccess(directoryServicesPermissionEntry.GetBaseEntry());
	}
}
