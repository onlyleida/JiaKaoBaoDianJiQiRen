using System.ComponentModel;
using System.Configuration;

namespace System.Web.Services.Configuration;

public sealed class TypeElement : ConfigurationElement
{
	private ConfigurationPropertyCollection properties = new ConfigurationPropertyCollection();

	private readonly ConfigurationProperty type = new ConfigurationProperty("type", typeof(TypeAndName), null, new TypeAndNameConverter(), null, ConfigurationPropertyOptions.IsKey);

	[TypeConverter(typeof(TypeAndNameConverter))]
	[ConfigurationProperty("type", IsKey = true)]
	public Type Type
	{
		get
		{
			return ((TypeAndName)base[type]).type;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			base[type] = new TypeAndName(value);
		}
	}

	protected override ConfigurationPropertyCollection Properties => properties;

	public TypeElement()
	{
		properties.Add(type);
	}

	public TypeElement(string type)
		: this()
	{
		base[this.type] = new TypeAndName(type);
	}

	public TypeElement(Type type)
		: this(type.AssemblyQualifiedName)
	{
	}
}
