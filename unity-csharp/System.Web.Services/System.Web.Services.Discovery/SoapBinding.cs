using System.Xml;
using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

[XmlRoot("soap", Namespace = "http://schemas.xmlsoap.org/disco/soap/")]
public sealed class SoapBinding
{
	public const string Namespace = "http://schemas.xmlsoap.org/disco/soap/";

	private XmlQualifiedName binding;

	private string address = "";

	[XmlAttribute("address")]
	public string Address
	{
		get
		{
			return address;
		}
		set
		{
			if (value == null)
			{
				address = "";
			}
			else
			{
				address = value;
			}
		}
	}

	[XmlAttribute("binding")]
	public XmlQualifiedName Binding
	{
		get
		{
			return binding;
		}
		set
		{
			binding = value;
		}
	}
}
