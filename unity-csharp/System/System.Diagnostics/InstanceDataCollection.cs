using System.Collections;

namespace System.Diagnostics;

public class InstanceDataCollection : DictionaryBase
{
	private string counterName;

	public string CounterName => counterName;

	public InstanceData this[string instanceName]
	{
		get
		{
			CheckNull(instanceName, "instanceName");
			return (InstanceData)Dictionary[instanceName];
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

	[Obsolete("Use InstanceDataCollectionCollection indexer instead.")]
	public InstanceDataCollection(string counterName)
	{
		CheckNull(counterName, "counterName");
		this.counterName = counterName;
	}

	public bool Contains(string instanceName)
	{
		CheckNull(instanceName, "instanceName");
		return Dictionary.Contains(instanceName);
	}

	public void CopyTo(InstanceData[] instances, int index)
	{
		Dictionary.CopyTo(instances, index);
	}
}
