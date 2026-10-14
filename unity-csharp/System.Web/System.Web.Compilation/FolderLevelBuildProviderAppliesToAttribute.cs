namespace System.Web.Compilation;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public sealed class FolderLevelBuildProviderAppliesToAttribute : Attribute
{
	private FolderLevelBuildProviderAppliesTo _appliesTo;

	public FolderLevelBuildProviderAppliesTo AppliesTo => _appliesTo;

	public FolderLevelBuildProviderAppliesToAttribute(FolderLevelBuildProviderAppliesTo appliesTo)
	{
		_appliesTo = appliesTo;
	}
}
