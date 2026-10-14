using System.Collections;

namespace System.DirectoryServices;

public class PropertyCollection : IDictionary, ICollection, IEnumerable
{
	private ArrayList m_oKeys = new ArrayList();

	private Hashtable m_oValues = new Hashtable();

	private DirectoryEntry _parent;

	public int Count => m_oValues.Count;

	bool ICollection.IsSynchronized => m_oValues.IsSynchronized;

	object ICollection.SyncRoot => m_oValues.SyncRoot;

	bool IDictionary.IsFixedSize => m_oKeys.IsFixedSize;

	bool IDictionary.IsReadOnly => m_oKeys.IsReadOnly;

	ICollection IDictionary.Keys => m_oValues.Keys;

	public ICollection PropertyNames => m_oValues.Keys;

	object IDictionary.this[object oKey]
	{
		get
		{
			return m_oValues[oKey];
		}
		set
		{
			m_oValues[oKey] = value;
		}
	}

	public ICollection Values => m_oValues.Values;

	public PropertyValueCollection this[string propertyName]
	{
		get
		{
			if (Contains(propertyName))
			{
				return (PropertyValueCollection)m_oValues[propertyName.ToLower()];
			}
			PropertyValueCollection propertyValueCollection = new PropertyValueCollection(_parent);
			Add(propertyName.ToLower(), propertyValueCollection);
			return propertyValueCollection;
		}
	}

	internal PropertyCollection()
		: this(null)
	{
	}

	internal PropertyCollection(DirectoryEntry parent)
	{
		_parent = parent;
	}

	private void ICopyTo(Array oArray, int iArrayIndex)
	{
		m_oValues.CopyTo(oArray, iArrayIndex);
	}

	void ICollection.CopyTo(Array oArray, int iArrayIndex)
	{
		ICopyTo(oArray, iArrayIndex);
	}

	public void CopyTo(PropertyValueCollection[] array, int index)
	{
		ICopyTo(array, index);
	}

	private void Add(object oKey, object oValue)
	{
		m_oKeys.Add(oKey);
		m_oValues.Add(oKey, oValue);
	}

	void IDictionary.Add(object oKey, object oValue)
	{
		Add(oKey, oValue);
	}

	void IDictionary.Clear()
	{
		m_oValues.Clear();
		m_oKeys.Clear();
	}

	private bool IContains(object oKey)
	{
		return m_oValues.Contains(oKey);
	}

	bool IDictionary.Contains(object oKey)
	{
		return IContains(oKey);
	}

	public bool Contains(string propertyName)
	{
		return IContains(propertyName.ToLower());
	}

	public IDictionaryEnumerator GetEnumerator()
	{
		return m_oValues.GetEnumerator();
	}

	void IDictionary.Remove(object oKey)
	{
		m_oValues.Remove(oKey);
		m_oKeys.Remove(oKey);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return m_oValues.GetEnumerator();
	}
}
