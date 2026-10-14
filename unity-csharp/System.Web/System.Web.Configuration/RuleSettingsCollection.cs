using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(RuleSettings), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class RuleSettingsCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public new RuleSettings this[string key] => (RuleSettings)BaseGet(key);

	public RuleSettings this[int index]
	{
		get
		{
			return (RuleSettings)BaseGet(index);
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static RuleSettingsCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(RuleSettings ruleSettings)
	{
		BaseAdd(ruleSettings);
	}

	public void Clear()
	{
		BaseClear();
	}

	public bool Contains(string name)
	{
		return BaseGet(name) != null;
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new RuleSettings();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((RuleSettings)element).Name;
	}

	public int IndexOf(string name)
	{
		RuleSettings ruleSettings = (RuleSettings)BaseGet(name);
		if (ruleSettings == null)
		{
			return -1;
		}
		return BaseIndexOf(ruleSettings);
	}

	[MonoTODO("why did they use 'Insert' and not 'Add' as other collections do?")]
	public void Insert(int index, RuleSettings eventSettings)
	{
		BaseAdd(index, eventSettings);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
