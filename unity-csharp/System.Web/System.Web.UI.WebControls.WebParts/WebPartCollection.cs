using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartCollection : ReadOnlyCollectionBase
{
	public WebPart this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPartCollection(ICollection webParts)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public WebPart get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool Contains(WebPart value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(WebPart[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(WebPart value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
