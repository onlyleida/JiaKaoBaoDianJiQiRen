using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(AuthorizationRule), AddItemName = "allow,deny", CollectionType = ConfigurationElementCollectionType.BasicMapAlternate)]
public sealed class AuthorizationRuleCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMapAlternate;

	protected override string ElementName => string.Empty;

	public AuthorizationRule this[int index]
	{
		get
		{
			return Get(index);
		}
		set
		{
			Set(index, value);
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AuthorizationRuleCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(AuthorizationRule rule)
	{
		BaseAdd(rule, throwIfExists: false);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement(string elementName)
	{
		return new AuthorizationRule((elementName == "allow") ? AuthorizationRuleAction.Allow : AuthorizationRuleAction.Deny);
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new AuthorizationRule(AuthorizationRuleAction.Allow);
	}

	public AuthorizationRule Get(int index)
	{
		return (AuthorizationRule)BaseGet(index);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((AuthorizationRule)element).Action.ToString();
	}

	public int IndexOf(AuthorizationRule rule)
	{
		return BaseIndexOf(rule);
	}

	protected override bool IsElementName(string elementname)
	{
		if (!(elementname == "allow"))
		{
			return elementname == "deny";
		}
		return true;
	}

	public void Remove(AuthorizationRule rule)
	{
		BaseRemove(rule.Action.ToString());
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(int index, AuthorizationRule rule)
	{
		if (BaseGet(index) != null)
		{
			BaseRemoveAt(index);
		}
		BaseAdd(index, rule);
	}
}
