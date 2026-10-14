namespace System.Web.Profile;

[AttributeUsage(AttributeTargets.Property)]
public sealed class ProfileProviderAttribute : Attribute
{
	private string providerName;

	public string ProviderName => providerName;

	public ProfileProviderAttribute(string providerName)
	{
		this.providerName = providerName;
	}
}
