namespace System.Web.UI.WebControls.WebParts;

[AttributeUsage(AttributeTargets.Property)]
public class WebDisplayNameAttribute : Attribute
{
	public static readonly WebDisplayNameAttribute Default = new WebDisplayNameAttribute();

	private string _displayName;

	public virtual string DisplayName => DisplayNameValue;

	protected string DisplayNameValue
	{
		get
		{
			return _displayName;
		}
		set
		{
			_displayName = value;
		}
	}

	public WebDisplayNameAttribute()
		: this(string.Empty)
	{
	}

	public WebDisplayNameAttribute(string displayName)
	{
		_displayName = displayName;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is WebDisplayNameAttribute webDisplayNameAttribute)
		{
			return webDisplayNameAttribute.DisplayName == DisplayName;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return DisplayName.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
