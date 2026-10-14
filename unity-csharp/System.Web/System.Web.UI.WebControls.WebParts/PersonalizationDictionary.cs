using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class PersonalizationDictionary : ICollection, IEnumerable, IDictionary
{
	public virtual int Count
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool IsFixedSize
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool IsReadOnly
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool IsSynchronized
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual PersonalizationEntry this[string key]
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

	public virtual ICollection Keys
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual object SyncRoot
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual ICollection Values
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public PersonalizationDictionary()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public PersonalizationDictionary(int initialSize)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	object IDictionary.get_Item(object key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SpecialName]
	void IDictionary.set_Item(object key, object value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void Add(string key, PersonalizationEntry value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void Clear()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool Contains(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual void CopyTo(DictionaryEntry[] array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual IDictionaryEnumerator GetEnumerator()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void Remove(string key)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ICollection.CopyTo(Array array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IDictionary.Add(object key, object value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	bool IDictionary.Contains(object key)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	void IDictionary.Remove(object key)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
