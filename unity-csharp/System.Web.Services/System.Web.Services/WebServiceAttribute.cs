namespace System.Web.Services;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface)]
public sealed class WebServiceAttribute : Attribute
{
	private string description;

	private string ns = "http://tempuri.org/";

	private string name;

	public const string DefaultNamespace = "http://tempuri.org/";

	public string Description
	{
		get
		{
			if (description != null)
			{
				return description;
			}
			return string.Empty;
		}
		set
		{
			description = value;
		}
	}

	public string Namespace
	{
		get
		{
			return ns;
		}
		set
		{
			ns = value;
		}
	}

	public string Name
	{
		get
		{
			if (name != null)
			{
				return name;
			}
			return string.Empty;
		}
		set
		{
			name = value;
		}
	}
}
