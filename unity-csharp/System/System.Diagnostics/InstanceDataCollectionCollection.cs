using System.Collections;

namespace System.Diagnostics;

public class InstanceDataCollectionCollection : DictionaryBase
{
	public InstanceDataCollection this[string counterName]
	{
		get
		{
			CheckNull(counterName, "counterName");
			return (InstanceDataCollection)Dictionary[counterName];
		}
	}

	public ICollection Keys => Dictionary.Keys;

	public ICollection Values => Dictionary.Values;

	private static void CheckNull(object value, string name)
	{
		if (value == null)
		{
			throw new ArgumentNullException(name);
		}
	}

	[Obsolete("Use PerformanceCounterCategory.ReadCategory()")]
	public InstanceDataCollectionCollection()
	{
	}

	public bool Contains(string counterName)
	{
		CheckNull(counterName, "counterName");
		return Dictionary.Contains(counterName);
	}

	public void CopyTo(InstanceDataCollection[] counters, int index)
	{
		Dictionary.CopyTo(counters, index);
	}
}
