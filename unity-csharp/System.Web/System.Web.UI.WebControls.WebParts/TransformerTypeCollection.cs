using System.Collections;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class TransformerTypeCollection : ReadOnlyCollectionBase
{
	public static readonly TransformerTypeCollection Empty;

	public Type this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public TransformerTypeCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public TransformerTypeCollection(ICollection transformerTypes)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public TransformerTypeCollection(TransformerTypeCollection existingTransformerTypes, ICollection transformerTypes)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool Contains(Type value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(Type[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public int IndexOf(Type value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
