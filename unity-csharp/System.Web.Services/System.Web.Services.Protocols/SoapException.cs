using System.Collections;
using System.Runtime.InteropServices;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Web.Services.Configuration;
using System.Xml;

namespace System.Web.Services.Protocols;

[Serializable]
public class SoapException : SystemException
{
	private XmlQualifiedName code = XmlQualifiedName.Empty;

	private string actor;

	private string role;

	private XmlNode detail;

	private SoapFaultSubCode subCode;

	private string lang;

	public static readonly XmlQualifiedName ServerFaultCode = new XmlQualifiedName("Server", "http://schemas.xmlsoap.org/soap/envelope/");

	public static readonly XmlQualifiedName ClientFaultCode = new XmlQualifiedName("Client", "http://schemas.xmlsoap.org/soap/envelope/");

	public static readonly XmlQualifiedName VersionMismatchFaultCode = new XmlQualifiedName("VersionMismatch", "http://schemas.xmlsoap.org/soap/envelope/");

	public static readonly XmlQualifiedName MustUnderstandFaultCode = new XmlQualifiedName("MustUnderstand", "http://schemas.xmlsoap.org/soap/envelope/");

	public static readonly XmlQualifiedName DetailElementName = new XmlQualifiedName("detail", "");

	public string Actor
	{
		get
		{
			if (actor != null)
			{
				return actor;
			}
			return string.Empty;
		}
	}

	public XmlQualifiedName Code => code;

	public XmlNode Detail => detail;

	[ComVisible(false)]
	public string Lang
	{
		get
		{
			if (lang != null)
			{
				return lang;
			}
			return string.Empty;
		}
	}

	[ComVisible(false)]
	public string Node
	{
		get
		{
			if (actor != null)
			{
				return actor;
			}
			return string.Empty;
		}
	}

	[ComVisible(false)]
	public string Role
	{
		get
		{
			if (role != null)
			{
				return role;
			}
			return string.Empty;
		}
	}

	[ComVisible(false)]
	public SoapFaultSubCode SubCode => subCode;

	public static bool IsServerFaultCode(XmlQualifiedName code)
	{
		if (!(code == ServerFaultCode))
		{
			return code == Soap12FaultCodes.ReceiverFaultCode;
		}
		return true;
	}

	public static bool IsClientFaultCode(XmlQualifiedName code)
	{
		if (!(code == ClientFaultCode))
		{
			return code == Soap12FaultCodes.SenderFaultCode;
		}
		return true;
	}

	public static bool IsVersionMismatchFaultCode(XmlQualifiedName code)
	{
		if (!(code == VersionMismatchFaultCode))
		{
			return code == Soap12FaultCodes.VersionMismatchFaultCode;
		}
		return true;
	}

	public static bool IsMustUnderstandFaultCode(XmlQualifiedName code)
	{
		if (!(code == MustUnderstandFaultCode))
		{
			return code == Soap12FaultCodes.MustUnderstandFaultCode;
		}
		return true;
	}

	public SoapException()
		: base(null)
	{
	}

	public SoapException(string message, XmlQualifiedName code, string actor)
		: base(message)
	{
		this.code = code;
		this.actor = actor;
	}

	public SoapException(string message, XmlQualifiedName code, string actor, Exception innerException)
		: base(message, innerException)
	{
		this.code = code;
		this.actor = actor;
	}

	public SoapException(string message, XmlQualifiedName code)
		: base(message)
	{
		this.code = code;
	}

	public SoapException(string message, XmlQualifiedName code, Exception innerException)
		: base(message, innerException)
	{
		this.code = code;
	}

	public SoapException(string message, XmlQualifiedName code, string actor, XmlNode detail)
		: base(message)
	{
		this.code = code;
		this.actor = actor;
		this.detail = detail;
	}

	public SoapException(string message, XmlQualifiedName code, string actor, XmlNode detail, Exception innerException)
		: base(message, innerException)
	{
		this.code = code;
		this.actor = actor;
		this.detail = detail;
	}

	public SoapException(string message, XmlQualifiedName code, SoapFaultSubCode subCode)
		: base(message)
	{
		this.code = code;
		this.subCode = subCode;
	}

	public SoapException(string message, XmlQualifiedName code, string actor, string role, XmlNode detail, SoapFaultSubCode subCode, Exception innerException)
		: base(message, innerException)
	{
		this.code = code;
		this.actor = actor;
		this.role = role;
		this.detail = detail;
		this.subCode = subCode;
	}

	public SoapException(string message, XmlQualifiedName code, string actor, string role, string lang, XmlNode detail, SoapFaultSubCode subCode, Exception innerException)
		: base(message, innerException)
	{
		this.code = code;
		this.actor = actor;
		this.role = role;
		this.detail = detail;
		this.lang = lang;
		this.subCode = subCode;
	}

	protected SoapException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		IDictionary data = base.Data;
		code = (XmlQualifiedName)data["code"];
		actor = (string)data["actor"];
		role = (string)data["role"];
		subCode = (SoapFaultSubCode)data["subCode"];
		lang = (string)data["lang"];
	}

	internal void ClearSubCode()
	{
		if (subCode != null)
		{
			subCode = subCode.SubCode;
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.SerializationFormatter)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		IDictionary data = Data;
		data["code"] = Code;
		data["actor"] = Actor;
		data["role"] = Role;
		data["subCode"] = SubCode;
		data["lang"] = Lang;
		base.GetObjectData(info, context);
	}

	private static SoapException CreateSuppressedException(SoapProtocolVersion soapVersion, string message, Exception innerException)
	{
		return new SoapException(Res.GetString("WebSuppressedExceptionMessage"), (soapVersion == SoapProtocolVersion.Soap12) ? new XmlQualifiedName("Receiver", "http://www.w3.org/2003/05/soap-envelope") : new XmlQualifiedName("Server", "http://schemas.xmlsoap.org/soap/envelope/"));
	}

	internal static SoapException Create(SoapProtocolVersion soapVersion, string message, XmlQualifiedName code, string actor, string role, XmlNode detail, SoapFaultSubCode subCode, Exception innerException)
	{
		if (WebServicesSection.Current.Diagnostics.SuppressReturningExceptions)
		{
			return CreateSuppressedException(soapVersion, Res.GetString("WebSuppressedExceptionMessage"), innerException);
		}
		return new SoapException(message, code, actor, role, detail, subCode, innerException);
	}

	internal static SoapException Create(SoapProtocolVersion soapVersion, string message, XmlQualifiedName code, Exception innerException)
	{
		if (WebServicesSection.Current.Diagnostics.SuppressReturningExceptions)
		{
			return CreateSuppressedException(soapVersion, Res.GetString("WebSuppressedExceptionMessage"), innerException);
		}
		return new SoapException(message, code, innerException);
	}
}
