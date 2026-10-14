using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class ConsumerConnectionPointCollection : ReadOnlyCollectionBase
{
	public ConsumerConnectionPoint Default
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ConsumerConnectionPoint this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ConsumerConnectionPointCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ConsumerConnectionPointCollection(ICollection connectionPoints)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public ConsumerConnectionPoint get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool Contains(ConsumerConnectionPoint connectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(ConsumerConnectionPoint[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(ConsumerConnectionPoint connectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
