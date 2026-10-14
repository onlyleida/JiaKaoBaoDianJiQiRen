using System.Collections;
using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(CodeSubDirectory), CollectionType = ConfigurationElementCollectionType.BasicMap)]
public sealed class CodeSubDirectoriesCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection props;

	public CodeSubDirectory this[int index]
	{
		get
		{
			return (CodeSubDirectory)BaseGet(index);
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

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMap;

	protected override string ElementName => "add";

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return props;
		}
	}

	static CodeSubDirectoriesCollection()
	{
		props = new ConfigurationPropertyCollection();
	}

	public CodeSubDirectoriesCollection()
		: base(CaseInsensitiveComparer.DefaultInvariant)
	{
	}

	public void Add(CodeSubDirectory codeSubDirectory)
	{
		BaseAdd(codeSubDirectory);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new CodeSubDirectory(null);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((CodeSubDirectory)element).DirectoryName;
	}

	public void Remove(string directoryName)
	{
		BaseRemove(directoryName);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
