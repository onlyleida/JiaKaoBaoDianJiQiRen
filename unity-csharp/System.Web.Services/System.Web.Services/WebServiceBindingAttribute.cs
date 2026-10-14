namespace System.Web.Services;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface, AllowMultiple = true)]
public sealed class WebServiceBindingAttribute : Attribute
{
	private string name;

	private string ns;

	private string location;

	private WsiProfiles claims;

	private bool emitClaims;

	public WsiProfiles ConformsTo
	{
		get
		{
			return claims;
		}
		set
		{
			claims = value;
		}
	}

	public bool EmitConformanceClaims
	{
		get
		{
			return emitClaims;
		}
		set
		{
			emitClaims = value;
		}
	}

	public string Location
	{
		get
		{
			if (location != null)
			{
				return location;
			}
			return string.Empty;
		}
		set
		{
			location = value;
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

	public string Namespace
	{
		get
		{
			if (ns != null)
			{
				return ns;
			}
			return string.Empty;
		}
		set
		{
			ns = value;
		}
	}

	public WebServiceBindingAttribute()
	{
	}

	public WebServiceBindingAttribute(string name)
	{
		this.name = name;
	}

	public WebServiceBindingAttribute(string name, string ns)
	{
		this.name = name;
		this.ns = ns;
	}

	public WebServiceBindingAttribute(string name, string ns, string location)
	{
		this.name = name;
		this.ns = ns;
		this.location = location;
	}
}
