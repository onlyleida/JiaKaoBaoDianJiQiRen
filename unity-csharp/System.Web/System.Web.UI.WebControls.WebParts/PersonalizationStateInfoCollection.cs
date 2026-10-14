using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Serializable]
public sealed class PersonalizationStateInfoCollection : ICollection, IEnumerable
{
	public int Count
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool IsSynchronized
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public PersonalizationStateInfo this[string path, string username]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public object SyncRoot
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public PersonalizationStateInfoCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public PersonalizationStateInfo get_Item(int index)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void Add(PersonalizationStateInfo data)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Clear()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void CopyTo(PersonalizationStateInfo[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public IEnumerator GetEnumerator()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void Remove(string path, string username)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SetReadOnly()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ICollection.CopyTo(Array array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
