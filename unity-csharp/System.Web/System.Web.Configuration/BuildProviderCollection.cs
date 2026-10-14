using System.Collections;
using System.Configuration;
using System.Web.Compilation;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(BuildProvider), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class BuildProviderCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection props;

	public BuildProvider this[int index]
	{
		get
		{
			return (BuildProvider)BaseGet(index);
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

	public new BuildProvider this[string name]
	{
		get
		{
			string key = (string.IsNullOrEmpty(name) ? name : name.ToLowerInvariant());
			return (BuildProvider)BaseGet(key);
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return props;
		}
	}

	static BuildProviderCollection()
	{
		props = new ConfigurationPropertyCollection();
	}

	public BuildProviderCollection()
		: base(CaseInsensitiveComparer.DefaultInvariant)
	{
	}

	public void Add(BuildProvider buildProvider)
	{
		BaseAdd(buildProvider);
	}

	public void Clear()
	{
		BaseClear();
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new BuildProvider();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((BuildProvider)element).Extension;
	}

	internal Type GetProviderTypeForExtension(string extension)
	{
		return System.Web.Compilation.BuildProvider.GetProviderTypeForExtension(extension);
	}

	internal System.Web.Compilation.BuildProvider GetProviderInstanceForExtension(string extension)
	{
		return System.Web.Compilation.BuildProvider.GetProviderInstanceForExtension(extension);
	}
}
