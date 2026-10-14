using System.Collections;

namespace System.ComponentModel.Design;

public class DesignerActionItemCollection : CollectionBase
{
	public DesignerActionItem this[int index]
	{
		get
		{
			return (DesignerActionItem)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(DesignerActionItem value)
	{
		return List.Add(value);
	}

	public bool Contains(DesignerActionItem value)
	{
		return List.Contains(value);
	}

	public void CopyTo(DesignerActionItem[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(DesignerActionItem value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, DesignerActionItem value)
	{
		List.Insert(index, value);
	}

	public void Remove(DesignerActionItem value)
	{
		List.Remove(value);
	}
}
