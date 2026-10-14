using System.Collections;
using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices;

[Serializable]
[MonoTODO("Fix serialization compatibility with MS.NET")]
public class DirectoryServicesPermissionEntryCollection : CollectionBase
{
	private DirectoryServicesPermission owner;

	public DirectoryServicesPermissionEntry this[int index]
	{
		get
		{
			return List[index] as DirectoryServicesPermissionEntry;
		}
		set
		{
			List[index] = value;
		}
	}

	internal DirectoryServicesPermissionEntryCollection(DirectoryServicesPermission owner)
	{
		this.owner = owner;
		ResourcePermissionBaseEntry[] entries = owner.GetEntries();
		if (entries.Length != 0)
		{
			ResourcePermissionBaseEntry[] array = entries;
			foreach (ResourcePermissionBaseEntry resourcePermissionBaseEntry in array)
			{
				DirectoryServicesPermissionEntry value = new DirectoryServicesPermissionEntry((DirectoryServicesPermissionAccess)resourcePermissionBaseEntry.PermissionAccess, resourcePermissionBaseEntry.PermissionAccessPath[0]);
				InnerList.Add(value);
			}
		}
	}

	public int Add(DirectoryServicesPermissionEntry value)
	{
		return List.Add(value);
	}

	public void AddRange(DirectoryServicesPermissionEntry[] value)
	{
		foreach (DirectoryServicesPermissionEntry value2 in value)
		{
			Add(value2);
		}
	}

	public void AddRange(DirectoryServicesPermissionEntryCollection value)
	{
		foreach (DirectoryServicesPermissionEntry item in value)
		{
			Add(item);
		}
	}

	public void CopyTo(DirectoryServicesPermissionEntry[] array, int index)
	{
		foreach (DirectoryServicesPermissionEntry item in List)
		{
			array[index++] = item;
		}
	}

	public bool Contains(DirectoryServicesPermissionEntry value)
	{
		return List.Contains(value);
	}

	public int IndexOf(DirectoryServicesPermissionEntry value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, DirectoryServicesPermissionEntry value)
	{
		List.Insert(index, value);
	}

	public void Remove(DirectoryServicesPermissionEntry value)
	{
		List.Remove(value);
	}

	protected override void OnClear()
	{
		owner.ClearEntries();
	}

	protected override void OnInsert(int index, object value)
	{
		owner.Add(value);
	}

	protected override void OnRemove(int index, object value)
	{
		owner.Remove(value);
	}

	protected override void OnSet(int index, object oldValue, object newValue)
	{
		owner.Remove(oldValue);
		owner.Add(newValue);
	}

	internal DirectoryServicesPermissionEntryCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
