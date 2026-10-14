namespace System.Web.Compilation;

[Flags]
public enum FolderLevelBuildProviderAppliesTo
{
	None = 0,
	Code = 1,
	WebReferences = 2,
	LocalResources = 4,
	GlobalResources = 8
}
