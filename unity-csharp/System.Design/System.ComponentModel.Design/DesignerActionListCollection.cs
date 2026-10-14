using System.Collections;
using System.Runtime.InteropServices;

namespace System.ComponentModel.Design;

[ComVisible(true)]
public class DesignerActionListCollection : CollectionBase
{
	public DesignerActionList this[int index]
	{
		get
		{
			return (DesignerActionList)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public DesignerActionListCollection()
	{
	}

	public DesignerActionListCollection(DesignerActionList[] value)
	{
		AddRange(value);
	}

	public int Add(DesignerActionList value)
	{
		return List.Add(value);
	}

	public void AddRange(DesignerActionList[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		foreach (DesignerActionList value2 in value)
		{
			Add(value2);
		}
	}

	public void AddRange(DesignerActionListCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		foreach (DesignerActionList item in value)
		{
			Add(item);
		}
	}

	public bool Contains(DesignerActionList value)
	{
		return List.Contains(value);
	}

	public void CopyTo(DesignerActionList[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(DesignerActionList value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, DesignerActionList value)
	{
		List.Insert(index, value);
	}

	public void Remove(DesignerActionList value)
	{
		List.Remove(value);
	}

	protected override void OnClear()
	{
	}

	protected override void OnInsert(int index, object value)
	{
	}

	protected override void OnRemove(int index, object value)
	{
	}

	protected override void OnSet(int index, object oldValue, object newValue)
	{
	}

	protected override void OnValidate(object value)
	{
	}
}
