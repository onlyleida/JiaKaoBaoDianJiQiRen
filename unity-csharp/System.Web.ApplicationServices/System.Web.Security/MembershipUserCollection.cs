using System.Collections;
using System.Runtime.CompilerServices;

namespace System.Web.Security;

[Serializable]
[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class MembershipUserCollection : IEnumerable, ICollection
{
	private Hashtable _Indices;

	private ArrayList _Values;

	private bool _ReadOnly;

	public MembershipUser this[string name]
	{
		get
		{
			object obj = _Indices[name];
			if (obj == null || !(obj is int num))
			{
				return null;
			}
			if (num >= _Values.Count)
			{
				return null;
			}
			return (MembershipUser)_Values[num];
		}
	}

	public int Count => _Values.Count;

	public bool IsSynchronized => false;

	public object SyncRoot => this;

	public MembershipUserCollection()
	{
		_Indices = new Hashtable(10, StringComparer.CurrentCultureIgnoreCase);
		_Values = new ArrayList();
	}

	public void Add(MembershipUser user)
	{
		if (user == null)
		{
			throw new ArgumentNullException("user");
		}
		if (_ReadOnly)
		{
			throw new NotSupportedException();
		}
		int num = _Values.Add(user);
		try
		{
			_Indices.Add(user.UserName, num);
		}
		catch
		{
			_Values.RemoveAt(num);
			throw;
		}
	}

	public void Remove(string name)
	{
		if (_ReadOnly)
		{
			throw new NotSupportedException();
		}
		object obj = _Indices[name];
		if (obj == null || !(obj is int num) || num >= _Values.Count)
		{
			return;
		}
		_Values.RemoveAt(num);
		_Indices.Remove(name);
		ArrayList arrayList = new ArrayList();
		foreach (DictionaryEntry index in _Indices)
		{
			if ((int)index.Value > num)
			{
				arrayList.Add(index.Key);
			}
		}
		foreach (string item in arrayList)
		{
			_Indices[item] = (int)_Indices[item] - 1;
		}
	}

	public IEnumerator GetEnumerator()
	{
		return _Values.GetEnumerator();
	}

	public void SetReadOnly()
	{
		if (!_ReadOnly)
		{
			_ReadOnly = true;
			_Values = ArrayList.ReadOnly(_Values);
		}
	}

	public void Clear()
	{
		_Values.Clear();
		_Indices.Clear();
	}

	void ICollection.CopyTo(Array array, int index)
	{
		_Values.CopyTo(array, index);
	}

	public void CopyTo(MembershipUser[] array, int index)
	{
		_Values.CopyTo(array, index);
	}
}
