using System.Collections;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics;

[Serializable]
public class EventLogPermissionEntryCollection : CollectionBase
{
	private EventLogPermission owner;

	public EventLogPermissionEntry this[int index]
	{
		get
		{
			return (EventLogPermissionEntry)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	internal EventLogPermissionEntryCollection(EventLogPermission owner)
	{
		this.owner = owner;
		ResourcePermissionBaseEntry[] entries = owner.GetEntries();
		if (entries.Length != 0)
		{
			ResourcePermissionBaseEntry[] array = entries;
			foreach (ResourcePermissionBaseEntry resourcePermissionBaseEntry in array)
			{
				EventLogPermissionEntry value = new EventLogPermissionEntry((EventLogPermissionAccess)resourcePermissionBaseEntry.PermissionAccess, resourcePermissionBaseEntry.PermissionAccessPath[0]);
				InnerList.Add(value);
			}
		}
	}

	public int Add(EventLogPermissionEntry value)
	{
		return List.Add(value);
	}

	public void AddRange(EventLogPermissionEntry[] value)
	{
		foreach (EventLogPermissionEntry value2 in value)
		{
			List.Add(value2);
		}
	}

	public void AddRange(EventLogPermissionEntryCollection value)
	{
		foreach (EventLogPermissionEntry item in value)
		{
			List.Add(item);
		}
	}

	public bool Contains(EventLogPermissionEntry value)
	{
		return List.Contains(value);
	}

	public void CopyTo(EventLogPermissionEntry[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(EventLogPermissionEntry value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, EventLogPermissionEntry value)
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

	public void Remove(EventLogPermissionEntry value)
	{
		List.Remove(value);
	}

	internal EventLogPermissionEntryCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
