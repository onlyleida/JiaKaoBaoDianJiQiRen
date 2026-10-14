using System.Web.Services.Description;

namespace System.Web.Services.Protocols;

[AttributeUsage(AttributeTargets.Class)]
public sealed class SoapDocumentServiceAttribute : Attribute
{
	private SoapBindingUse use;

	private SoapParameterStyle paramStyle;

	private SoapServiceRoutingStyle routingStyle;

	public SoapBindingUse Use
	{
		get
		{
			return use;
		}
		set
		{
			use = value;
		}
	}

	public SoapParameterStyle ParameterStyle
	{
		get
		{
			return paramStyle;
		}
		set
		{
			paramStyle = value;
		}
	}

	public SoapServiceRoutingStyle RoutingStyle
	{
		get
		{
			return routingStyle;
		}
		set
		{
			routingStyle = value;
		}
	}

	public SoapDocumentServiceAttribute()
	{
	}

	public SoapDocumentServiceAttribute(SoapBindingUse use)
	{
		this.use = use;
	}

	public SoapDocumentServiceAttribute(SoapBindingUse use, SoapParameterStyle paramStyle)
	{
		this.use = use;
		this.paramStyle = paramStyle;
	}
}
