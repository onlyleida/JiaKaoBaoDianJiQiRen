using System.Collections;

namespace System.Web.UI.WebControls;

public class StyleCollection : StateManagedCollection
{
	public Style this[int i]
	{
		get
		{
			return (Style)((IList)this)[i];
		}
		set
		{
			((IList)this)[i] = value;
		}
	}

	internal StyleCollection()
	{
	}

	public int Add(Style style)
	{
		return ((IList)this).Add((object)style);
	}

	public bool Contains(Style style)
	{
		return ((IList)this).Contains((object)style);
	}

	public void CopyTo(Style[] styleArray, int index)
	{
		((ICollection)this).CopyTo((Array)styleArray, index);
	}

	protected override object CreateKnownType(int index)
	{
		return new Style();
	}

	protected override Type[] GetKnownTypes()
	{
		return new Type[1] { typeof(Style) };
	}

	public int IndexOf(Style style)
	{
		return ((IList)this).IndexOf((object)style);
	}

	public void Insert(int index, Style style)
	{
		((IList)this).Insert(index, (object)style);
	}

	public void Remove(Style style)
	{
		((IList)this).Remove((object)style);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		if (o is Style style)
		{
			style.SetDirty();
		}
	}
}
