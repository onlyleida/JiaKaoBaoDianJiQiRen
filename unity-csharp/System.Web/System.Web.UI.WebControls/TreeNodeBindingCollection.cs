using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class TreeNodeBindingCollection : StateManagedCollection
{
	private static Type[] types = new Type[1] { typeof(TreeNodeBinding) };

	public TreeNodeBinding this[int i]
	{
		get
		{
			return (TreeNodeBinding)((IList)this)[i];
		}
		set
		{
			((IList)this)[i] = value;
		}
	}

	internal TreeNodeBindingCollection()
	{
	}

	public int Add(TreeNodeBinding binding)
	{
		return ((IList)this).Add((object)binding);
	}

	public bool Contains(TreeNodeBinding binding)
	{
		return ((IList)this).Contains((object)binding);
	}

	public void CopyTo(TreeNodeBinding[] bindingArray, int index)
	{
		((ICollection)this).CopyTo((Array)bindingArray, index);
	}

	protected override object CreateKnownType(int index)
	{
		return new TreeNodeBinding();
	}

	protected override Type[] GetKnownTypes()
	{
		return types;
	}

	public int IndexOf(TreeNodeBinding binding)
	{
		return ((IList)this).IndexOf((object)binding);
	}

	public void Insert(int index, TreeNodeBinding binding)
	{
		((IList)this).Insert(index, (object)binding);
	}

	public void Remove(TreeNodeBinding binding)
	{
		((IList)this).Remove((object)binding);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((TreeNodeBinding)o).SetDirty();
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
