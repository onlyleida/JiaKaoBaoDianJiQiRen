using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartDescriptionCollection : ReadOnlyCollectionBase
{
	public WebPartDescription this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartDescriptionCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPartDescriptionCollection(ICollection webPartDescriptions)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public WebPartDescription get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool Contains(WebPartDescription value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(WebPartDescription[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(WebPartDescription value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
