namespace System.Web.Profile;

[AttributeUsage(AttributeTargets.Property)]
public sealed class CustomProviderDataAttribute : Attribute
{
	private string customProviderData;

	public string CustomProviderData => customProviderData;

	public CustomProviderDataAttribute(string customProviderData)
	{
		this.customProviderData = customProviderData;
	}

	public override bool IsDefaultAttribute()
	{
		return string.IsNullOrEmpty(CustomProviderData);
	}
}
