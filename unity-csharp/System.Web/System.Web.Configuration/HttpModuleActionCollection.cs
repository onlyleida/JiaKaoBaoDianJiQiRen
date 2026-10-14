using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(HttpModuleAction), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class HttpModuleActionCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public HttpModuleAction this[int index]
	{
		get
		{
			return (HttpModuleAction)BaseGet(index);
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

	static HttpModuleActionCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(HttpModuleAction httpModule)
	{
		BaseAdd(httpModule);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new HttpModuleAction();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((HttpModuleAction)element).Name;
	}

	public int IndexOf(HttpModuleAction action)
	{
		return BaseIndexOf(action);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void Remove(HttpModuleAction action)
	{
		BaseRemove(action.Name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	protected override bool IsElementRemovable(ConfigurationElement element)
	{
		return base.IsElementRemovable(element);
	}
}
