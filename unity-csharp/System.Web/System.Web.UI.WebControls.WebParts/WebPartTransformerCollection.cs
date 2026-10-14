using System.Collections;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartTransformerCollection : CollectionBase
{
	public bool IsReadOnly
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public WebPartTransformer this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartTransformerCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int Add(WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool Contains(WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(WebPartTransformer[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void Insert(int index, WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Remove(WebPartTransformer transformer)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
