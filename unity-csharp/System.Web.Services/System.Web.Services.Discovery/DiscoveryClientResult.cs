using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

public sealed class DiscoveryClientResult
{
	private string referenceTypeName;

	private string url;

	private string filename;

	[XmlAttribute("referenceType")]
	public string ReferenceTypeName
	{
		get
		{
			return referenceTypeName;
		}
		set
		{
			referenceTypeName = value;
		}
	}

	[XmlAttribute("url")]
	public string Url
	{
		get
		{
			return url;
		}
		set
		{
			url = value;
		}
	}

	[XmlAttribute("filename")]
	public string Filename
	{
		get
		{
			return filename;
		}
		set
		{
			filename = value;
		}
	}

	public DiscoveryClientResult()
	{
	}

	public DiscoveryClientResult(Type referenceType, string url, string filename)
	{
		referenceTypeName = ((referenceType == null) ? string.Empty : referenceType.FullName);
		this.url = url;
		this.filename = filename;
	}
}
