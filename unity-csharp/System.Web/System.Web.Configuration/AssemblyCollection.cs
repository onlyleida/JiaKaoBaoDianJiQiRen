using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(AssemblyInfo), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class AssemblyCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public AssemblyInfo this[int index]
	{
		get
		{
			return (AssemblyInfo)BaseGet(index);
		}
		set
		{
			if (BaseGet(index) != null)
			{
				BaseRemoveAt(index);
			}
			BaseAdd(index, value);
		}
	}

	public new AssemblyInfo this[string assemblyName] => (AssemblyInfo)BaseGet(assemblyName);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AssemblyCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(AssemblyInfo assemblyInformation)
	{
		BaseAdd(assemblyInformation, throwIfExists: false);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new AssemblyInfo();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((AssemblyInfo)element).Assembly;
	}

	public void Remove(string key)
	{
		BaseRemove(key);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
