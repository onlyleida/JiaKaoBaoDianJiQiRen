namespace System.Web.Management;

[Flags]
public enum SqlFeatures
{
	None = 0,
	Membership = 1,
	Profile = 2,
	RoleManager = 4,
	Personalization = 8,
	SqlWebEventProvider = 0x10,
	All = 0x4000001F
}
