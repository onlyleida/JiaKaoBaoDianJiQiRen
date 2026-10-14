using System.Collections;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics;

[Serializable]
public class PerformanceCounterPermissionEntryCollection : CollectionBase
{
	private PerformanceCounterPermission owner;

	public PerformanceCounterPermissionEntry this[int index]
	{
		get
		{
			return (PerformanceCounterPermissionEntry)InnerList[index];
		}
		set
		{
			InnerList[index] = value;
		}
	}

	internal PerformanceCounterPermissionEntryCollection(PerformanceCounterPermission owner)
	{
		this.owner = owner;
		ResourcePermissionBaseEntry[] entries = owner.GetEntries();
		if (entries.Length != 0)
		{
			ResourcePermissionBaseEntry[] array = entries;
			foreach (ResourcePermissionBaseEntry obj in array)
			{
				PerformanceCounterPermissionAccess permissionAccess = (PerformanceCounterPermissionAccess)obj.PermissionAccess;
				string machineName = obj.PermissionAccessPath[0];
				string categoryName = obj.PermissionAccessPath[1];
				PerformanceCounterPermissionEntry value = new PerformanceCounterPermissionEntry(permissionAccess, machineName, categoryName);
				InnerList.Add(value);
			}
		}
	}

	internal PerformanceCounterPermissionEntryCollection(ResourcePermissionBaseEntry[] entries)
	{
		foreach (ResourcePermissionBaseEntry resourcePermissionBaseEntry in entries)
		{
			List.Add(new PerformanceCounterPermissionEntry((PerformanceCounterPermissionAccess)resourcePermissionBaseEntry.PermissionAccess, resourcePermissionBaseEntry.PermissionAccessPath[0], resourcePermissionBaseEntry.PermissionAccessPath[1]));
		}
	}

	public int Add(PerformanceCounterPermissionEntry value)
	{
		return List.Add(value);
	}

	public void AddRange(PerformanceCounterPermissionEntry[] value)
	{
		foreach (PerformanceCounterPermissionEntry value2 in value)
		{
			List.Add(value2);
		}
	}

	public void AddRange(PerformanceCounterPermissionEntryCollection value)
	{
		foreach (PerformanceCounterPermissionEntry item in value)
		{
			List.Add(item);
		}
	}

	public bool Contains(PerformanceCounterPermissionEntry value)
	{
		return List.Contains(value);
	}

	public void CopyTo(PerformanceCounterPermissionEntry[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(PerformanceCounterPermissionEntry value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, PerformanceCounterPermissionEntry value)
	{
		List.Insert(index, value);
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

	public void Remove(PerformanceCounterPermissionEntry value)
	{
		List.Remove(value);
	}

	internal PerformanceCounterPermissionEntryCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
