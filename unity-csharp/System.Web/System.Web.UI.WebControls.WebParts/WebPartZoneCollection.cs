using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartZoneCollection : ReadOnlyCollectionBase
{
	public WebPartZoneBase this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartZoneCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPartZoneCollection(ICollection webPartZones)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public WebPartZoneBase get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool Contains(WebPartZoneBase value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(WebPartZoneBase[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(WebPartZoneBase value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
