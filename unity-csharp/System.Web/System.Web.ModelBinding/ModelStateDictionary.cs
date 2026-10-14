using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace System.Web.ModelBinding;

[Serializable]
public class ModelStateDictionary : IDictionary<string, ModelState>, ICollection<KeyValuePair<string, ModelState>>, IEnumerable<KeyValuePair<string, ModelState>>, IEnumerable
{
	private readonly Dictionary<string, ModelState> _innerDictionary = new Dictionary<string, ModelState>(StringComparer.OrdinalIgnoreCase);

	public int Count => _innerDictionary.Count;

	public bool IsReadOnly => ((ICollection<KeyValuePair<string, ModelState>>)_innerDictionary).IsReadOnly;

	public bool IsValid => Values.All((ModelState modelState) => modelState.Errors.Count == 0);

	public ICollection<string> Keys => _innerDictionary.Keys;

	public ModelState this[string key]
	{
		get
		{
			_innerDictionary.TryGetValue(key, out var value);
			return value;
		}
		set
		{
			_innerDictionary[key] = value;
		}
	}

	public ICollection<ModelState> Values => _innerDictionary.Values;

	public ModelStateDictionary()
	{
	}

	public ModelStateDictionary(ModelStateDictionary dictionary)
	{
		if (dictionary == null)
		{
			throw new ArgumentNullException("dictionary");
		}
		foreach (KeyValuePair<string, ModelState> item in dictionary)
		{
			_innerDictionary.Add(item.Key, item.Value);
		}
	}

	public void Add(KeyValuePair<string, ModelState> item)
	{
		((ICollection<KeyValuePair<string, ModelState>>)_innerDictionary).Add(item);
	}

	public void Add(string key, ModelState value)
	{
		_innerDictionary.Add(key, value);
	}

	public void AddModelError(string key, Exception exception)
	{
		GetModelStateForKey(key).Errors.Add(exception);
	}

	public void AddModelError(string key, string errorMessage)
	{
		GetModelStateForKey(key).Errors.Add(errorMessage);
	}

	public void Clear()
	{
		_innerDictionary.Clear();
	}

	public bool Contains(KeyValuePair<string, ModelState> item)
	{
		return ((ICollection<KeyValuePair<string, ModelState>>)_innerDictionary).Contains(item);
	}

	public bool ContainsKey(string key)
	{
		return _innerDictionary.ContainsKey(key);
	}

	public void CopyTo(KeyValuePair<string, ModelState>[] array, int arrayIndex)
	{
		((ICollection<KeyValuePair<string, ModelState>>)_innerDictionary).CopyTo(array, arrayIndex);
	}

	public IEnumerator<KeyValuePair<string, ModelState>> GetEnumerator()
	{
		return _innerDictionary.GetEnumerator();
	}

	private ModelState GetModelStateForKey(string key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		if (!TryGetValue(key, out var value))
		{
			value = (this[key] = new ModelState());
		}
		return value;
	}

	public bool IsValidField(string key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		return DictionaryHelpers.FindKeysWithPrefix(this, key).All((KeyValuePair<string, ModelState> entry) => entry.Value.Errors.Count == 0);
	}

	public void Merge(ModelStateDictionary dictionary)
	{
		if (dictionary == null)
		{
			return;
		}
		foreach (KeyValuePair<string, ModelState> item in dictionary)
		{
			this[item.Key] = item.Value;
		}
	}

	public bool Remove(KeyValuePair<string, ModelState> item)
	{
		return ((ICollection<KeyValuePair<string, ModelState>>)_innerDictionary).Remove(item);
	}

	public bool Remove(string key)
	{
		return _innerDictionary.Remove(key);
	}

	public void SetModelValue(string key, ValueProviderResult value)
	{
		GetModelStateForKey(key).Value = value;
	}

	public bool TryGetValue(string key, out ModelState value)
	{
		return _innerDictionary.TryGetValue(key, out value);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return ((IEnumerable)_innerDictionary).GetEnumerator();
	}
}
