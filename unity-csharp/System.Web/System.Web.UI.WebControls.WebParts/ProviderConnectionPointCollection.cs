using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class ProviderConnectionPointCollection : ReadOnlyCollectionBase
{
	public ProviderConnectionPoint Default
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProviderConnectionPoint this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProviderConnectionPointCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ProviderConnectionPointCollection(ICollection connectionPoints)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public ProviderConnectionPoint get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool Contains(ProviderConnectionPoint connectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(ProviderConnectionPoint[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(ProviderConnectionPoint connectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
