using System.Collections;
using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class ModelBinderDictionary : ICollection<KeyValuePair<Type, IModelBinder>>, IEnumerable<KeyValuePair<Type, IModelBinder>>, IEnumerable, IDictionary<Type, IModelBinder>
{
	public int Count
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public IModelBinder DefaultBinder
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

	public bool IsReadOnly
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public IModelBinder this[Type key]
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

	public ICollection<Type> Keys
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (ICollection<Type>)0;
		}
	}

	public ICollection<IModelBinder> Values
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (ICollection<IModelBinder>)0;
		}
	}

	public ModelBinderDictionary()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Add(KeyValuePair<Type, IModelBinder> item)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Add(Type key, IModelBinder value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Clear()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool Contains(KeyValuePair<Type, IModelBinder> item)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool ContainsKey(Type key)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void CopyTo(KeyValuePair<Type, IModelBinder>[] array, int arrayIndex)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public IEnumerator<KeyValuePair<Type, IModelBinder>> GetEnumerator()
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerator<KeyValuePair<Type, IModelBinder>>)0;
	}

	public bool Remove(KeyValuePair<Type, IModelBinder> item)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool Remove(Type key)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool TryGetValue(Type key, out IModelBinder value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
