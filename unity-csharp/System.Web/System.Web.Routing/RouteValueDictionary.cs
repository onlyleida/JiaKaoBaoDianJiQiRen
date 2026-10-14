using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class RouteValueDictionary : IDictionary<string, object>, ICollection<KeyValuePair<string, object>>, IEnumerable<KeyValuePair<string, object>>, IEnumerable
{
	private Dictionary<string, object> _dictionary;

	public int Count => _dictionary.Count;

	public Dictionary<string, object>.KeyCollection Keys => _dictionary.Keys;

	public Dictionary<string, object>.ValueCollection Values => _dictionary.Values;

	public object this[string key]
	{
		get
		{
			TryGetValue(key, out var value);
			return value;
		}
		set
		{
			_dictionary[key] = value;
		}
	}

	ICollection<string> IDictionary<string, object>.Keys => _dictionary.Keys;

	ICollection<object> IDictionary<string, object>.Values => _dictionary.Values;

	bool ICollection<KeyValuePair<string, object>>.IsReadOnly => ((ICollection<KeyValuePair<string, object>>)_dictionary).IsReadOnly;

	public RouteValueDictionary()
	{
		_dictionary = new Dictionary<string, object>(StringComparer.OrdinalIgnoreCase);
	}

	public RouteValueDictionary(object values)
	{
		_dictionary = new Dictionary<string, object>(StringComparer.OrdinalIgnoreCase);
		AddValues(values);
	}

	public RouteValueDictionary(IDictionary<string, object> dictionary)
	{
		_dictionary = new Dictionary<string, object>(dictionary, StringComparer.OrdinalIgnoreCase);
	}

	public void Add(string key, object value)
	{
		_dictionary.Add(key, value);
	}

	private void AddValues(object values)
	{
		if (values == null)
		{
			return;
		}
		foreach (PropertyDescriptor property in TypeDescriptor.GetProperties(values))
		{
			object value = property.GetValue(values);
			Add(property.Name, value);
		}
	}

	public void Clear()
	{
		_dictionary.Clear();
	}

	public bool ContainsKey(string key)
	{
		return _dictionary.ContainsKey(key);
	}

	public bool ContainsValue(object value)
	{
		return _dictionary.ContainsValue(value);
	}

	public Dictionary<string, object>.Enumerator GetEnumerator()
	{
		return _dictionary.GetEnumerator();
	}

	public bool Remove(string key)
	{
		return _dictionary.Remove(key);
	}

	public bool TryGetValue(string key, out object value)
	{
		return _dictionary.TryGetValue(key, out value);
	}

	void ICollection<KeyValuePair<string, object>>.Add(KeyValuePair<string, object> item)
	{
		((ICollection<KeyValuePair<string, object>>)_dictionary).Add(item);
	}

	bool ICollection<KeyValuePair<string, object>>.Contains(KeyValuePair<string, object> item)
	{
		return ((ICollection<KeyValuePair<string, object>>)_dictionary).Contains(item);
	}

	void ICollection<KeyValuePair<string, object>>.CopyTo(KeyValuePair<string, object>[] array, int arrayIndex)
	{
		((ICollection<KeyValuePair<string, object>>)_dictionary).CopyTo(array, arrayIndex);
	}

	bool ICollection<KeyValuePair<string, object>>.Remove(KeyValuePair<string, object> item)
	{
		return ((ICollection<KeyValuePair<string, object>>)_dictionary).Remove(item);
	}

	IEnumerator<KeyValuePair<string, object>> IEnumerable<KeyValuePair<string, object>>.GetEnumerator()
	{
		return GetEnumerator();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
