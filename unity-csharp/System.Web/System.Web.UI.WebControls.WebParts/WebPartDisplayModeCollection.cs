using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartDisplayModeCollection : CollectionBase
{
	public bool IsReadOnly
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public WebPartDisplayMode this[string modeName]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal WebPartDisplayModeCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public WebPartDisplayMode get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public int Add(WebPartDisplayMode value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool Contains(WebPartDisplayMode value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(WebPartDisplayMode[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(WebPartDisplayMode value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void Insert(int index, WebPartDisplayMode value)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
