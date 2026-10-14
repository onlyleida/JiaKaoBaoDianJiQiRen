using System.ComponentModel;
using System.Configuration;
using System.Xml;

namespace System.Web.Configuration;

public sealed class TagMapInfo : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty mappedTagTypeProp;

	private static ConfigurationProperty tagTypeProp;

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("mappedTagType")]
	public string MappedTagType
	{
		get
		{
			return (string)base[mappedTagTypeProp];
		}
		set
		{
			base[mappedTagTypeProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("tagType", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string TagType
	{
		get
		{
			return (string)base[tagTypeProp];
		}
		set
		{
			base[tagTypeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static TagMapInfo()
	{
		mappedTagTypeProp = new ConfigurationProperty("mappedTagType", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		tagTypeProp = new ConfigurationProperty("tagType", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(mappedTagTypeProp);
		properties.Add(tagTypeProp);
	}

	internal TagMapInfo()
	{
	}

	public TagMapInfo(string tagTypeName, string mappedTagTypeName)
	{
		TagType = tagTypeName;
		MappedTagType = mappedTagTypeName;
	}

	public override bool Equals(object o)
	{
		if (!(o is TagMapInfo tagMapInfo))
		{
			return false;
		}
		if (MappedTagType == tagMapInfo.MappedTagType)
		{
			return TagType == tagMapInfo.TagType;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return MappedTagType.GetHashCode() + TagType.GetHashCode();
	}

	protected internal override bool SerializeElement(XmlWriter writer, bool serializeCollectionKey)
	{
		return base.SerializeElement(writer, serializeCollectionKey);
	}
}
