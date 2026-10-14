using System.ComponentModel;
using System.Web.Services.Configuration;
using System.Web.Services.Protocols;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtension("operation", "http://schemas.xmlsoap.org/wsdl/soap12/", typeof(OperationBinding))]
public sealed class Soap12OperationBinding : SoapOperationBinding
{
	private bool soapActionRequired;

	private Soap12OperationBinding duplicateBySoapAction;

	private Soap12OperationBinding duplicateByRequestElement;

	private SoapReflectedMethod method;

	[DefaultValue(false)]
	[XmlAttribute("soapActionRequired")]
	public bool SoapActionRequired
	{
		get
		{
			return soapActionRequired;
		}
		set
		{
			soapActionRequired = value;
		}
	}

	internal SoapReflectedMethod Method
	{
		get
		{
			return method;
		}
		set
		{
			method = value;
		}
	}

	internal Soap12OperationBinding DuplicateBySoapAction
	{
		get
		{
			return duplicateBySoapAction;
		}
		set
		{
			duplicateBySoapAction = value;
		}
	}

	internal Soap12OperationBinding DuplicateByRequestElement
	{
		get
		{
			return duplicateByRequestElement;
		}
		set
		{
			duplicateByRequestElement = value;
		}
	}
}
