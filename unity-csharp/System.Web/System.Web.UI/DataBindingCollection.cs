using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataBindingCollection : ICollection, IEnumerable
{
	private static readonly object changedEvent = new object();

	private Hashtable list;

	private ArrayList removed;

	private EventHandlerList events = new EventHandlerList();

	public int Count => list.Count;

	public bool IsReadOnly => list.IsReadOnly;

	public bool IsSynchronized => list.IsSynchronized;

	public DataBinding this[string propertyName] => list[propertyName] as DataBinding;

	public string[] RemovedBindings => (string[])removed.ToArray(typeof(string));

	public object SyncRoot => list.SyncRoot;

	public event EventHandler Changed
	{
		add
		{
			events.AddHandler(changedEvent, value);
		}
		remove
		{
			events.RemoveHandler(changedEvent, value);
		}
	}

	public DataBindingCollection()
	{
		list = new Hashtable();
		removed = new ArrayList();
	}

	public void Add(DataBinding binding)
	{
		list.Add(binding.PropertyName, binding);
		RaiseChanged();
	}

	public void Clear()
	{
		list.Clear();
	}

	public void CopyTo(Array array, int index)
	{
		list.Values.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return list.GetEnumerator();
	}

	public void Remove(DataBinding binding)
	{
		string propertyName = binding.PropertyName;
		Remove(propertyName);
	}

	public void Remove(string propertyName)
	{
		removed.Add(propertyName);
		list.Remove(propertyName);
		RaiseChanged();
	}

	public void Remove(string propertyName, bool addToRemovedList)
	{
		if (addToRemovedList)
		{
			removed.Add(string.Empty);
		}
		else
		{
			removed.Add(propertyName);
		}
		list.Remove(propertyName);
	}

	public bool Contains(string propertyName)
	{
		return list.Contains(propertyName);
	}

	internal void RaiseChanged()
	{
		if (events[changedEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
	}
}
