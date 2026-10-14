namespace System.Web.UI.WebControls.WebParts;

[AttributeUsage(AttributeTargets.Property)]
public class WebDescriptionAttribute : Attribute
{
	public static readonly WebDescriptionAttribute Default = new WebDescriptionAttribute();

	private string _description;

	public virtual string Description => DescriptionValue;

	protected string DescriptionValue
	{
		get
		{
			return _description;
		}
		set
		{
			_description = value;
		}
	}

	public WebDescriptionAttribute()
		: this(string.Empty)
	{
	}

	public WebDescriptionAttribute(string description)
	{
		_description = description;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is WebDescriptionAttribute webDescriptionAttribute)
		{
			return webDescriptionAttribute.Description == Description;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Description.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
