using System.Collections;
using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ExpressionBuilder), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class ExpressionBuilderCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection props;

	public ExpressionBuilder this[int index]
	{
		get
		{
			return (ExpressionBuilder)BaseGet(index);
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

	public new ExpressionBuilder this[string name] => (ExpressionBuilder)BaseGet(name);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return props;
		}
	}

	static ExpressionBuilderCollection()
	{
		props = new ConfigurationPropertyCollection();
	}

	public ExpressionBuilderCollection()
		: base(CaseInsensitiveComparer.DefaultInvariant)
	{
	}

	public void Add(ExpressionBuilder buildProvider)
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
		return new ExpressionBuilder();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((ExpressionBuilder)element).ExpressionPrefix;
	}
}
