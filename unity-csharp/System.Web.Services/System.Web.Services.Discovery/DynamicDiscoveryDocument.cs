using System.IO;
using System.Text;
using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

[XmlRoot("dynamicDiscovery", Namespace = "urn:schemas-dynamicdiscovery:disco.2000-03-17")]
public sealed class DynamicDiscoveryDocument
{
	private ExcludePathInfo[] excludePaths = new ExcludePathInfo[0];

	public const string Namespace = "urn:schemas-dynamicdiscovery:disco.2000-03-17";

	[XmlElement("exclude", typeof(ExcludePathInfo))]
	public ExcludePathInfo[] ExcludePaths
	{
		get
		{
			return excludePaths;
		}
		set
		{
			if (value == null)
			{
				value = new ExcludePathInfo[0];
			}
			excludePaths = value;
		}
	}

	public void Write(Stream stream)
	{
		new XmlSerializer(typeof(DynamicDiscoveryDocument)).Serialize(new StreamWriter(stream, new UTF8Encoding(encoderShouldEmitUTF8Identifier: false)), this);
	}

	public static DynamicDiscoveryDocument Load(Stream stream)
	{
		return (DynamicDiscoveryDocument)new XmlSerializer(typeof(DynamicDiscoveryDocument)).Deserialize(stream);
	}
}
