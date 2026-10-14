using System.Xml;

namespace System.Configuration;

public sealed class DefaultSection : ConfigurationSection
{
	private static ConfigurationPropertyCollection properties;

	protected internal override ConfigurationPropertyCollection Properties => properties;

	static DefaultSection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	protected internal override void DeserializeSection(XmlReader xmlReader)
	{
		if (RawXml == null)
		{
			RawXml = xmlReader.ReadOuterXml();
		}
		else
		{
			xmlReader.Skip();
		}
	}

	[MonoTODO]
	protected internal override bool IsModified()
	{
		return base.IsModified();
	}

	[MonoTODO]
	protected internal override void Reset(ConfigurationElement parentSection)
	{
		base.Reset(parentSection);
	}

	[MonoTODO]
	protected internal override void ResetModified()
	{
		base.ResetModified();
	}

	[MonoTODO]
	protected internal override string SerializeSection(ConfigurationElement parentSection, string name, ConfigurationSaveMode saveMode)
	{
		return base.SerializeSection(parentSection, name, saveMode);
	}
}
