using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class CatalogPartCollection : ReadOnlyCollectionBase
{
	public static readonly CatalogPartCollection Empty;

	public CatalogPart this[string id]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public CatalogPartCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CatalogPartCollection(ICollection catalogParts)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CatalogPartCollection(CatalogPartCollection existingCatalogParts, ICollection catalogParts)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public CatalogPart get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool Contains(CatalogPart catalogPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(CatalogPart[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(CatalogPart catalogPart)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
