using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class TreeNodeStyleCollection : StateManagedCollection
{
	private static Type[] types = new Type[1] { typeof(TreeNodeStyle) };

	public TreeNodeStyle this[int i]
	{
		get
		{
			return (TreeNodeStyle)((IList)this)[i];
		}
		set
		{
			((IList)this)[i] = value;
		}
	}

	internal TreeNodeStyleCollection()
	{
	}

	public int Add(TreeNodeStyle style)
	{
		style.Font.Underline = style.Font.Underline;
		return ((IList)this).Add((object)style);
	}

	public bool Contains(TreeNodeStyle style)
	{
		return ((IList)this).Contains((object)style);
	}

	public void CopyTo(TreeNodeStyle[] styleArray, int index)
	{
		((ICollection)this).CopyTo((Array)styleArray, index);
	}

	protected override object CreateKnownType(int index)
	{
		return new TreeNodeStyle();
	}

	protected override Type[] GetKnownTypes()
	{
		return types;
	}

	public int IndexOf(TreeNodeStyle style)
	{
		return ((IList)this).IndexOf((object)style);
	}

	public void Insert(int index, TreeNodeStyle style)
	{
		((IList)this).Insert(index, (object)style);
	}

	public void Remove(TreeNodeStyle style)
	{
		((IList)this).Remove((object)style);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((TreeNodeStyle)o).SetDirty();
	}

	protected override void OnInsert(int index, object value)
	{
		base.OnInsert(index, value);
	}
}
