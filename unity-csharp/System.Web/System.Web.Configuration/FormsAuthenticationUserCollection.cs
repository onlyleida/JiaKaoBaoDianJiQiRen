using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(FormsAuthenticationUser), AddItemName = "user", CollectionType = ConfigurationElementCollectionType.BasicMap)]
public sealed class FormsAuthenticationUserCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].Name;
			}
			return array;
		}
	}

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMap;

	protected override string ElementName => "user";

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public FormsAuthenticationUser this[int index]
	{
		get
		{
			return Get(index);
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

	public new FormsAuthenticationUser this[string name] => Get(name);

	protected override bool ThrowOnDuplicate => false;

	static FormsAuthenticationUserCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(FormsAuthenticationUser user)
	{
		BaseAdd(user);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new FormsAuthenticationUser("", "");
	}

	public FormsAuthenticationUser Get(int index)
	{
		return (FormsAuthenticationUser)BaseGet(index);
	}

	public FormsAuthenticationUser Get(string name)
	{
		return (FormsAuthenticationUser)BaseGet(name);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((FormsAuthenticationUser)element).Name;
	}

	public string GetKey(int index)
	{
		return Get(index).Name;
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(FormsAuthenticationUser user)
	{
		FormsAuthenticationUser formsAuthenticationUser = Get(user.Name);
		if (formsAuthenticationUser == null)
		{
			Add(user);
			return;
		}
		int index = BaseIndexOf(formsAuthenticationUser);
		RemoveAt(index);
		BaseAdd(index, user);
	}
}
