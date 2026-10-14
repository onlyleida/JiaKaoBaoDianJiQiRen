namespace System.Web.UI.WebControls.WebParts;

[AttributeUsage(AttributeTargets.Property)]
public sealed class WebBrowsableAttribute : Attribute
{
	public static readonly WebBrowsableAttribute Yes = new WebBrowsableAttribute(browsable: true);

	public static readonly WebBrowsableAttribute No = new WebBrowsableAttribute(browsable: false);

	public static readonly WebBrowsableAttribute Default = No;

	private bool _browsable;

	public bool Browsable => _browsable;

	public WebBrowsableAttribute()
		: this(browsable: true)
	{
	}

	public WebBrowsableAttribute(bool browsable)
	{
		_browsable = browsable;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is WebBrowsableAttribute webBrowsableAttribute)
		{
			return webBrowsableAttribute.Browsable == Browsable;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return _browsable.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
