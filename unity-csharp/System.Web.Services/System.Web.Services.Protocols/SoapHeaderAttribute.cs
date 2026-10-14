namespace System.Web.Services.Protocols;

[AttributeUsage(AttributeTargets.Method, AllowMultiple = true)]
public sealed class SoapHeaderAttribute : Attribute
{
	private string memberName;

	private SoapHeaderDirection direction = SoapHeaderDirection.In;

	private bool required = true;

	public string MemberName
	{
		get
		{
			if (memberName != null)
			{
				return memberName;
			}
			return string.Empty;
		}
		set
		{
			memberName = value;
		}
	}

	public SoapHeaderDirection Direction
	{
		get
		{
			return direction;
		}
		set
		{
			direction = value;
		}
	}

	[Obsolete("This property will be removed from a future version. The presence of a particular header in a SOAP message is no longer enforced", false)]
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

	public SoapHeaderAttribute(string memberName)
	{
		this.memberName = memberName;
	}
}
