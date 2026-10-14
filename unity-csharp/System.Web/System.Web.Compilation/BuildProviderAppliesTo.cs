namespace System.Web.Compilation;

[Flags]
public enum BuildProviderAppliesTo
{
	Web = 1,
	Code = 2,
	Resources = 4,
	All = Web | Code | Resources
}
