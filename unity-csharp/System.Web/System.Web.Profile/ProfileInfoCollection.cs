using System.Collections;

namespace System.Web.Profile;

[Serializable]
public sealed class ProfileInfoCollection : IEnumerable, ICollection
{
	private Hashtable _Hashtable;

	private ArrayList _ArrayList;

	private bool _ReadOnly;

	private int _CurPos;

	private int _NumBlanks;

	public ProfileInfo this[string name]
	{
		get
		{
			object obj = _Hashtable[name];
			if (obj == null)
			{
				return null;
			}
			return _ArrayList[(int)obj] as ProfileInfo;
		}
	}

	public int Count => _Hashtable.Count;

	public bool IsSynchronized => false;

	public object SyncRoot => this;

	public ProfileInfoCollection()
	{
		_Hashtable = new Hashtable(10, StringComparer.CurrentCultureIgnoreCase);
		_ArrayList = new ArrayList();
	}

	public void Add(ProfileInfo profileInfo)
	{
		if (_ReadOnly)
		{
			throw new NotSupportedException();
		}
		if (profileInfo == null || profileInfo.UserName == null)
		{
			throw new ArgumentNullException("profileInfo");
		}
		_Hashtable.Add(profileInfo.UserName, _CurPos);
		_ArrayList.Add(profileInfo);
		_CurPos++;
	}

	public void Remove(string name)
	{
		if (_ReadOnly)
		{
			throw new NotSupportedException();
		}
		object obj = _Hashtable[name];
		if (obj != null)
		{
			_Hashtable.Remove(name);
			_ArrayList[(int)obj] = null;
			_NumBlanks++;
		}
	}

	public IEnumerator GetEnumerator()
	{
		DoCompact();
		return _ArrayList.GetEnumerator();
	}

	public void SetReadOnly()
	{
		if (!_ReadOnly)
		{
			_ReadOnly = true;
		}
	}

	public void Clear()
	{
		if (_ReadOnly)
		{
			throw new NotSupportedException();
		}
		_Hashtable.Clear();
		_ArrayList.Clear();
		_CurPos = 0;
		_NumBlanks = 0;
	}

	public void CopyTo(Array array, int index)
	{
		DoCompact();
		_ArrayList.CopyTo(array, index);
	}

	public void CopyTo(ProfileInfo[] array, int index)
	{
		DoCompact();
		_ArrayList.CopyTo(array, index);
	}

	private void DoCompact()
	{
		if (_NumBlanks < 1)
		{
			return;
		}
		ArrayList arrayList = new ArrayList(_CurPos - _NumBlanks);
		int num = -1;
		for (int i = 0; i < _CurPos; i++)
		{
			if (_ArrayList[i] != null)
			{
				arrayList.Add(_ArrayList[i]);
			}
			else if (num == -1)
			{
				num = i;
			}
		}
		_NumBlanks = 0;
		_ArrayList = arrayList;
		_CurPos = _ArrayList.Count;
		for (int j = num; j < _CurPos; j++)
		{
			ProfileInfo profileInfo = _ArrayList[j] as ProfileInfo;
			_Hashtable[profileInfo.UserName] = j;
		}
	}
}
