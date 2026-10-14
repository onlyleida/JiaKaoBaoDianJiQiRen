using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class MenuItemBindingCollection : StateManagedCollection
{
	private static Type[] types = new Type[1] { typeof(MenuItemBinding) };

	public MenuItemBinding this[int i]
	{
		get
		{
			return (MenuItemBinding)((IList)this)[i];
		}
		set
		{
			((IList)this)[i] = value;
		}
	}

	internal MenuItemBindingCollection()
	{
	}

	public int Add(MenuItemBinding binding)
	{
		return ((IList)this).Add((object)binding);
	}

	public bool Contains(MenuItemBinding binding)
	{
		return ((IList)this).Contains((object)binding);
	}

	public void CopyTo(MenuItemBinding[] array, int index)
	{
		((ICollection)this).CopyTo((Array)array, index);
	}

	protected override object CreateKnownType(int index)
	{
		return new MenuItemBinding();
	}

	protected override Type[] GetKnownTypes()
	{
		return types;
	}

	public int IndexOf(MenuItemBinding value)
	{
		return ((IList)this).IndexOf((object)value);
	}

	public void Insert(int index, MenuItemBinding binding)
	{
		((IList)this).Insert(index, (object)binding);
	}

	public void Remove(MenuItemBinding binding)
	{
		((IList)this).Remove((object)binding);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((MenuItemBinding)o).SetDirty();
	}

	protected override void OnClear()
	{
		base.OnClear();
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		base.OnRemoveComplete(index, value);
	}

	protected override void OnValidate(object value)
	{
		base.OnValidate(value);
	}
}
