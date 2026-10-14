using System.Web.Services.Description;

namespace System.Web.Services.Protocols;

[AttributeUsage(AttributeTargets.Method)]
public sealed class SoapDocumentMethodAttribute : Attribute
{
	private string action;

	private string requestName;

	private string responseName;

	private string requestNamespace;

	private string responseNamespace;

	private bool oneWay;

	private SoapBindingUse use;

	private SoapParameterStyle style;

	private string binding;

	public string Action
	{
		get
		{
			return action;
		}
		set
		{
			action = value;
		}
	}

	public bool OneWay
	{
		get
		{
			return oneWay;
		}
		set
		{
			oneWay = value;
		}
	}

	public string RequestNamespace
	{
		get
		{
			return requestNamespace;
		}
		set
		{
			requestNamespace = value;
		}
	}

	public string ResponseNamespace
	{
		get
		{
			return responseNamespace;
		}
		set
		{
			responseNamespace = value;
		}
	}

	public string RequestElementName
	{
		get
		{
			if (requestName != null)
			{
				return requestName;
			}
			return string.Empty;
		}
		set
		{
			requestName = value;
		}
	}

	public string ResponseElementName
	{
		get
		{
			if (responseName != null)
			{
				return responseName;
			}
			return string.Empty;
		}
		set
		{
			responseName = value;
		}
	}

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
			return style;
		}
		set
		{
			style = value;
		}
	}

	public string Binding
	{
		get
		{
			if (binding != null)
			{
				return binding;
			}
			return string.Empty;
		}
		set
		{
			binding = value;
		}
	}

	public SoapDocumentMethodAttribute()
	{
	}

	public SoapDocumentMethodAttribute(string action)
	{
		this.action = action;
	}
}
