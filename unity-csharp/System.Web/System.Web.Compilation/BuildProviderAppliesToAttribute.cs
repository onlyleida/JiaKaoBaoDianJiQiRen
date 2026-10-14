namespace System.Web.Compilation;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public sealed class BuildProviderAppliesToAttribute : Attribute
{
	private BuildProviderAppliesTo _appliesTo;

	public BuildProviderAppliesTo AppliesTo => _appliesTo;

	public BuildProviderAppliesToAttribute(BuildProviderAppliesTo appliesTo)
	{
		_appliesTo = appliesTo;
	}
}
