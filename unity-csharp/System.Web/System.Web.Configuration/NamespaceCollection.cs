using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(NamespaceInfo), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class NamespaceCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty autoImportVBNamespaceProp;

	[ConfigurationProperty("autoImportVBNamespace", DefaultValue = true)]
	public bool AutoImportVBNamespace
	{
		get
		{
			return (bool)base[autoImportVBNamespaceProp];
		}
		set
		{
			base[autoImportVBNamespaceProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public NamespaceInfo this[int index]
	{
		get
		{
			return (NamespaceInfo)BaseGet(index);
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

	static NamespaceCollection()
	{
		autoImportVBNamespaceProp = new ConfigurationProperty("autoImportVBNamespace", typeof(bool), true);
		properties = new ConfigurationPropertyCollection();
		properties.Add(autoImportVBNamespaceProp);
	}

	public void Add(NamespaceInfo namespaceInformation)
	{
		BaseAdd(namespaceInformation);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new NamespaceInfo(null);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((NamespaceInfo)element).Namespace;
	}

	public void Remove(string s)
	{
		BaseRemove(s);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
