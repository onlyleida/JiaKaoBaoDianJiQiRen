namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Property, AllowMultiple = false, Inherited = true)]
public sealed class UrlPropertyAttribute : Attribute
{
	private string filter;

	public string Filter => filter;

	public UrlPropertyAttribute()
		: this("*.*")
	{
	}

	public UrlPropertyAttribute(string filter)
	{
		this.filter = filter;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is UrlPropertyAttribute urlPropertyAttribute))
		{
			return false;
		}
		return filter.Equals(urlPropertyAttribute.Filter);
	}

	public override int GetHashCode()
	{
		return filter.GetHashCode();
	}
}
