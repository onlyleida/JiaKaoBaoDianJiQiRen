using System.Collections;
using System.ComponentModel;

namespace System.Web.UI;

public sealed class ExpressionBindingCollection : ICollection, IEnumerable
{
	private static readonly object changedEvent = new object();

	private Hashtable list;

	private ArrayList removed;

	private EventHandlerList events = new EventHandlerList();

	public int Count => list.Count;

	public bool IsReadOnly => list.IsReadOnly;

	public bool IsSynchronized => list.IsSynchronized;

	public ExpressionBinding this[string propertyName] => list[propertyName] as ExpressionBinding;

	public ICollection RemovedBindings => removed;

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

	public ExpressionBindingCollection()
	{
		list = new Hashtable();
		removed = new ArrayList();
	}

	public void Add(ExpressionBinding binding)
	{
		list.Add(binding.PropertyName, binding);
		OnChanged(new EventArgs());
	}

	public void Clear()
	{
		list.Clear();
		removed.Clear();
		OnChanged(new EventArgs());
	}

	public bool Contains(string propName)
	{
		return list.Contains(propName);
	}

	public void CopyTo(Array array, int index)
	{
		list.CopyTo(array, index);
	}

	public void CopyTo(ExpressionBinding[] array, int index)
	{
		if (index < 0)
		{
			throw new ArgumentNullException("Index cannot be negative");
		}
		if (index >= array.Length)
		{
			throw new ArgumentException("Index cannot be greater than or equal to length of array passed");
		}
		if (list.Count > array.Length - index + 1)
		{
			throw new ArgumentException("Number of elements in source is greater than available space from index to end of destination");
		}
		foreach (string key in list.Keys)
		{
			array[index++] = (ExpressionBinding)list[key];
		}
	}

	public IEnumerator GetEnumerator()
	{
		return list.GetEnumerator();
	}

	public void Remove(ExpressionBinding binding)
	{
		Remove(binding.PropertyName, addToRemovedList: true);
	}

	public void Remove(string propertyName)
	{
		Remove(propertyName, addToRemovedList: true);
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
		OnChanged(new EventArgs());
	}

	private void OnChanged(EventArgs e)
	{
		if (events[changedEvent] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}
}
