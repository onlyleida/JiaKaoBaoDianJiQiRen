using System.ComponentModel;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

public abstract class ServiceDescriptionFormatExtension
{
	private object parent;

	private bool required;

	private bool handled;

	public object Parent => parent;

	[DefaultValue(false)]
	[XmlAttribute("required", Namespace = "http://schemas.xmlsoap.org/wsdl/")]
	public bool Required
	{
		get
		{
			return required;
		}
		set
		{
			required = value;
		}
	}

	[XmlIgnore]
	public bool Handled
	{
		get
		{
			return handled;
		}
		set
		{
			handled = value;
		}
	}

	internal void SetParent(object parent)
	{
		this.parent = parent;
	}
}
