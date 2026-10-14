using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Property)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class TemplateContainerAttribute : Attribute
{
	private Type containerType;

	private BindingDirection direction;

	public BindingDirection BindingDirection => direction;

	public Type ContainerType => containerType;

	public TemplateContainerAttribute(Type containerType, BindingDirection bindingDirection)
	{
		this.containerType = containerType;
		direction = bindingDirection;
	}

	public TemplateContainerAttribute(Type containerType)
	{
		this.containerType = containerType;
	}
}
