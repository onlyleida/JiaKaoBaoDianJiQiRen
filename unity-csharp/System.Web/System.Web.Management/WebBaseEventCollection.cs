using System.Collections;
using Unity;

namespace System.Web.Management;

public sealed class WebBaseEventCollection : ReadOnlyCollectionBase
{
	public WebBaseEvent this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebBaseEventCollection(ICollection events)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool Contains(WebBaseEvent value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public int IndexOf(WebBaseEvent value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
