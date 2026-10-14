using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class MenuItemStyleCollection : StateManagedCollection
{
	private static Type[] types = new Type[1] { typeof(MenuItemStyle) };

	public MenuItemStyle this[int i]
	{
		get
		{
			return (MenuItemStyle)((IList)this)[i];
		}
		set
		{
			((IList)this)[i] = value;
		}
	}

	internal MenuItemStyleCollection()
	{
	}

	public int Add(MenuItemStyle style)
	{
		return ((IList)this).Add((object)style);
	}

	public bool Contains(MenuItemStyle style)
	{
		return ((IList)this).Contains((object)style);
	}

	public void CopyTo(MenuItemStyle[] styleArray, int index)
	{
		((ICollection)this).CopyTo((Array)styleArray, index);
	}

	protected override object CreateKnownType(int index)
	{
		return new MenuItemStyle();
	}

	protected override Type[] GetKnownTypes()
	{
		return types;
	}

	public int IndexOf(MenuItemStyle style)
	{
		return ((IList)this).IndexOf((object)style);
	}

	public void Insert(int index, MenuItemStyle style)
	{
		((IList)this).Insert(index, (object)style);
	}

	public void Remove(MenuItemStyle style)
	{
		((IList)this).Remove((object)style);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((MenuItemStyle)o).SetDirty();
	}

	protected override void OnInsert(int index, object value)
	{
		base.OnInsert(index, value);
	}
}
