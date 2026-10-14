using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.CompositeControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class CompositeControl : WebControl, INamingContainer, ICompositeControlDesignerAccessor
{
	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	public override ControlCollection Controls
	{
		get
		{
			EnsureChildControls();
			return base.Controls;
		}
	}

	public override void DataBind()
	{
		EnsureChildControls();
		base.DataBind();
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		EnsureChildControls();
		base.Render(writer);
	}

	void ICompositeControlDesignerAccessor.RecreateChildControls()
	{
		RecreateChildControls();
	}

	[MonoTODO("not sure exactly what this one does..")]
	protected virtual void RecreateChildControls()
	{
		CreateChildControls();
	}
}
