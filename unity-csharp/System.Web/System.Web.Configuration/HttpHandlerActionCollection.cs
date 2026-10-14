using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(HttpHandlerAction), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMapAlternate)]
public sealed class HttpHandlerActionCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.AddRemoveClearMapAlternate;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public HttpHandlerAction this[int index]
	{
		get
		{
			return (HttpHandlerAction)BaseGet(index);
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

	protected override bool ThrowOnDuplicate => false;

	static HttpHandlerActionCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(HttpHandlerAction httpHandlerAction)
	{
		HttpApplication.ClearHandlerCache();
		BaseAdd(httpHandlerAction);
	}

	public void Clear()
	{
		HttpApplication.ClearHandlerCache();
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new HttpHandlerAction();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((HttpHandlerAction)element).Path + "-" + ((HttpHandlerAction)element).Verb;
	}

	public int IndexOf(HttpHandlerAction action)
	{
		return BaseIndexOf(action);
	}

	public void Remove(string verb, string path)
	{
		HttpApplication.ClearHandlerCache();
		BaseRemove(path + "-" + verb);
	}

	public void Remove(HttpHandlerAction action)
	{
		HttpApplication.ClearHandlerCache();
		BaseRemove(action.Path + "-" + action.Verb);
	}

	public void RemoveAt(int index)
	{
		HttpApplication.ClearHandlerCache();
		BaseRemoveAt(index);
	}
}
