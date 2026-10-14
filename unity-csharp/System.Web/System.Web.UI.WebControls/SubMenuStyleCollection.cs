using System.Collections;

namespace System.Web.UI.WebControls;

public class SubMenuStyleCollection : StateManagedCollection
{
	private static Type[] types = new Type[1] { typeof(SubMenuStyle) };

	public SubMenuStyle this[int i]
	{
		get
		{
			return (SubMenuStyle)((IList)this)[i];
		}
		set
		{
			((IList)this)[i] = value;
		}
	}

	internal SubMenuStyleCollection()
	{
	}

	public int Add(SubMenuStyle style)
	{
		return ((IList)this).Add((object)style);
	}

	public bool Contains(SubMenuStyle style)
	{
		return ((IList)this).Contains((object)style);
	}

	public void CopyTo(SubMenuStyle[] styleArray, int index)
	{
		((ICollection)this).CopyTo((Array)styleArray, index);
	}

	protected override object CreateKnownType(int index)
	{
		return new SubMenuStyle();
	}

	protected override Type[] GetKnownTypes()
	{
		return types;
	}

	public int IndexOf(SubMenuStyle style)
	{
		return ((IList)this).IndexOf((object)style);
	}

	public void Insert(int index, SubMenuStyle style)
	{
		((IList)this).Insert(index, (object)style);
	}

	public void Remove(SubMenuStyle style)
	{
		((IList)this).Remove((object)style);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((SubMenuStyle)o).SetDirty();
	}
}
