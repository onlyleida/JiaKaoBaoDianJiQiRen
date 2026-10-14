using System.Xml;

namespace System.Web.Services.Protocols;

[Serializable]
public class SoapFaultSubCode
{
	private XmlQualifiedName code;

	private SoapFaultSubCode subCode;

	public XmlQualifiedName Code => code;

	public SoapFaultSubCode SubCode => subCode;

	public SoapFaultSubCode(XmlQualifiedName code)
		: this(code, null)
	{
	}

	public SoapFaultSubCode(XmlQualifiedName code, SoapFaultSubCode subCode)
	{
		this.code = code;
		this.subCode = subCode;
	}
}
