using System.Collections;

namespace System.DirectoryServices;

public class ResultPropertyCollection : DictionaryBase
{
	public ResultPropertyValueCollection this[string name] => (ResultPropertyValueCollection)Dictionary[name.ToLower()];

	public ICollection PropertyNames => Dictionary.Keys;

	public ICollection Values => Dictionary.Values;

	internal ResultPropertyCollection()
	{
	}

	internal void Add(string key, ResultPropertyValueCollection rpcoll)
	{
		Dictionary.Add(key.ToLower(), rpcoll);
	}

	public bool Contains(string propertyName)
	{
		return Dictionary.Contains(propertyName.ToLower());
	}

	public void CopyTo(ResultPropertyValueCollection[] array, int index)
	{
		foreach (ResultPropertyValueCollection value in Values)
		{
			array[index++] = value;
		}
	}
}
