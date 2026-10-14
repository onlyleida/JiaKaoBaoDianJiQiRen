using System.ComponentModel;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Xml.Serialization;

namespace System.Web.Services.Protocols;

[XmlType(IncludeInSchema = false)]
[SoapType(IncludeInSchema = false)]
public abstract class SoapHeader
{
	private string actor;

	private bool mustUnderstand;

	private bool didUnderstand;

	private bool relay;

	internal SoapProtocolVersion version;

	[DefaultValue("0")]
	[XmlAttribute("mustUnderstand", Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
	[SoapAttribute("mustUnderstand", Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
	public string EncodedMustUnderstand
	{
		get
		{
			if (version == SoapProtocolVersion.Soap12 || !MustUnderstand)
			{
				return "0";
			}
			return "1";
		}
		set
		{
			switch (value)
			{
			case "false":
			case "0":
				MustUnderstand = false;
				break;
			case "true":
			case "1":
				MustUnderstand = true;
				break;
			default:
				throw new ArgumentException(Res.GetString("WebHeaderInvalidMustUnderstand", value));
			}
		}
	}

	[SoapAttribute("mustUnderstand", Namespace = "http://www.w3.org/2003/05/soap-envelope")]
	[ComVisible(false)]
	[DefaultValue("0")]
	[XmlAttribute("mustUnderstand", Namespace = "http://www.w3.org/2003/05/soap-envelope")]
	public string EncodedMustUnderstand12
	{
		get
		{
			if (version == SoapProtocolVersion.Soap11 || !MustUnderstand)
			{
				return "0";
			}
			return "1";
		}
		set
		{
			EncodedMustUnderstand = value;
		}
	}

	[XmlIgnore]
	[SoapIgnore]
	public bool MustUnderstand
	{
		get
		{
			return InternalMustUnderstand;
		}
		set
		{
			InternalMustUnderstand = value;
		}
	}

	internal virtual bool InternalMustUnderstand
	{
		[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
		get
		{
			return mustUnderstand;
		}
		[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
		set
		{
			mustUnderstand = value;
		}
	}

	[XmlAttribute("actor", Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
	[SoapAttribute("actor", Namespace = "http://schemas.xmlsoap.org/soap/envelope/")]
	[DefaultValue("")]
	public string Actor
	{
		get
		{
			if (version == SoapProtocolVersion.Soap12)
			{
				return "";
			}
			return InternalActor;
		}
		set
		{
			InternalActor = value;
		}
	}

	[ComVisible(false)]
	[SoapAttribute("role", Namespace = "http://www.w3.org/2003/05/soap-envelope")]
	[DefaultValue("")]
	[XmlAttribute("role", Namespace = "http://www.w3.org/2003/05/soap-envelope")]
	public string Role
	{
		get
		{
			if (version == SoapProtocolVersion.Soap11)
			{
				return "";
			}
			return InternalActor;
		}
		set
		{
			InternalActor = value;
		}
	}

	internal virtual string InternalActor
	{
		[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
		get
		{
			if (actor != null)
			{
				return actor;
			}
			return string.Empty;
		}
		[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
		set
		{
			actor = value;
		}
	}

	[XmlIgnore]
	[SoapIgnore]
	public bool DidUnderstand
	{
		get
		{
			return didUnderstand;
		}
		set
		{
			didUnderstand = value;
		}
	}

	[XmlAttribute("relay", Namespace = "http://www.w3.org/2003/05/soap-envelope")]
	[ComVisible(false)]
	[SoapAttribute("relay", Namespace = "http://www.w3.org/2003/05/soap-envelope")]
	[DefaultValue("0")]
	public string EncodedRelay
	{
		get
		{
			if (version == SoapProtocolVersion.Soap11 || !Relay)
			{
				return "0";
			}
			return "1";
		}
		set
		{
			switch (value)
			{
			case "false":
			case "0":
				Relay = false;
				break;
			case "true":
			case "1":
				Relay = true;
				break;
			default:
				throw new ArgumentException(Res.GetString("WebHeaderInvalidRelay", value));
			}
		}
	}

	[ComVisible(false)]
	[SoapIgnore]
	[XmlIgnore]
	public bool Relay
	{
		get
		{
			return InternalRelay;
		}
		set
		{
			InternalRelay = value;
		}
	}

	internal virtual bool InternalRelay
	{
		[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
		get
		{
			return relay;
		}
		[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
		set
		{
			relay = value;
		}
	}
}
