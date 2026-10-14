using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class CompiledTemplateBuilder : ITemplate
{
	private BuildTemplateMethod templateMethod;

	public CompiledTemplateBuilder(BuildTemplateMethod buildTemplateMethod)
	{
		templateMethod = buildTemplateMethod;
	}

	public void InstantiateIn(Control container)
	{
		templateMethod(container);
	}
}
