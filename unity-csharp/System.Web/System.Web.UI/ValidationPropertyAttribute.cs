using System.Security.Permissions;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ValidationPropertyAttribute : Attribute
{
	private string name;

	public string Name => name;

	public ValidationPropertyAttribute(string name)
	{
		this.name = name;
	}
}
