using System.ComponentModel;
using System.Configuration;

namespace System.Web.Services.Configuration;

public sealed class SoapExtensionTypeElement : ConfigurationElement
{
	private ConfigurationPropertyCollection properties = new ConfigurationPropertyCollection();

	private readonly ConfigurationProperty group = new ConfigurationProperty("group", typeof(PriorityGroup), PriorityGroup.Low, new EnumConverter(typeof(PriorityGroup)), null, ConfigurationPropertyOptions.IsKey);

	private readonly ConfigurationProperty priority = new ConfigurationProperty("priority", typeof(int), 0, null, new IntegerValidator(0, int.MaxValue), ConfigurationPropertyOptions.IsKey);

	private readonly ConfigurationProperty type = new ConfigurationProperty("type", typeof(Type), null, new TypeTypeConverter(), null, ConfigurationPropertyOptions.IsKey);

	[ConfigurationProperty("group", IsKey = true, DefaultValue = PriorityGroup.Low)]
	public PriorityGroup Group
	{
		get
		{
			return (PriorityGroup)base[group];
		}
		set
		{
			if (Enum.IsDefined(typeof(PriorityGroup), value))
			{
				base[group] = value;
				return;
			}
			throw new ArgumentException(Res.GetString("Invalid_priority_group_value"), "value");
		}
	}

	[ConfigurationProperty("priority", IsKey = true, DefaultValue = 0)]
	[IntegerValidator(MinValue = 0)]
	public int Priority
	{
		get
		{
			return (int)base[priority];
		}
		set
		{
			base[priority] = value;
		}
	}

	[ConfigurationProperty("type", IsKey = true)]
	[TypeConverter(typeof(TypeTypeConverter))]
	public Type Type
	{
		get
		{
			return (Type)base[type];
		}
		set
		{
			base[type] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties => properties;

	public SoapExtensionTypeElement()
	{
		properties.Add(group);
		properties.Add(priority);
		properties.Add(type);
	}

	public SoapExtensionTypeElement(string type, int priority, PriorityGroup group)
		: this()
	{
		Type = Type.GetType(type, throwOnError: true, ignoreCase: true);
		Priority = priority;
		Group = group;
	}

	public SoapExtensionTypeElement(Type type, int priority, PriorityGroup group)
		: this(type.AssemblyQualifiedName, priority, group)
	{
	}
}
