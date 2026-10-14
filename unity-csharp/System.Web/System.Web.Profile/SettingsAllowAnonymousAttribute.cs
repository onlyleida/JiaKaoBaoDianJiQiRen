namespace System.Web.Profile;

[AttributeUsage(AttributeTargets.Property)]
public sealed class SettingsAllowAnonymousAttribute : Attribute
{
	private bool allow;

	public bool Allow => allow;

	public SettingsAllowAnonymousAttribute(bool allow)
	{
		this.allow = allow;
	}

	[MonoTODO("Not implemented")]
	public override bool IsDefaultAttribute()
	{
		throw new NotImplementedException();
	}
}
