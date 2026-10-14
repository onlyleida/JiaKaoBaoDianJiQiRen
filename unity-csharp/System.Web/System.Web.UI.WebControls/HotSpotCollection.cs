using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.HotSpotCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HotSpotCollection : StateManagedCollection
{
	private static Type[] _knownTypes = new Type[3]
	{
		typeof(CircleHotSpot),
		typeof(PolygonHotSpot),
		typeof(RectangleHotSpot)
	};

	public HotSpot this[int index] => (HotSpot)((IList)this)[index];

	public int Add(HotSpot spot)
	{
		return ((IList)this).Add((object)spot);
	}

	protected override object CreateKnownType(int index)
	{
		return index switch
		{
			0 => (object)new CircleHotSpot(), 
			1 => new PolygonHotSpot(), 
			2 => new RectangleHotSpot(), 
			_ => throw new ArgumentOutOfRangeException("index"), 
		};
	}

	protected override Type[] GetKnownTypes()
	{
		return _knownTypes;
	}

	public void Insert(int index, HotSpot spot)
	{
		((IList)this).Insert(index, (object)spot);
	}

	protected override void OnValidate(object o)
	{
		base.OnValidate(o);
		if (!(o is HotSpot))
		{
			throw new ArgumentException("o is not a HotSpot");
		}
	}

	public void Remove(HotSpot spot)
	{
		((IList)this).Remove((object)spot);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((HotSpot)o).SetDirty();
	}
}
