using System.Security.Permissions;
using Unity;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class PartialCachingControl : BasePartialCachingControl
{
	private Type type;

	private object[] parameters;

	private Control control;

	public Control CachedControl => control;

	internal PartialCachingControl(Type type, object[] parameters)
	{
		this.type = type;
		this.parameters = parameters;
	}

	internal override Control CreateControl()
	{
		control = (Control)Activator.CreateInstance(type, parameters);
		if (control is UserControl)
		{
			((UserControl)control).InitializeAsUserControl(Page);
		}
		return control;
	}

	internal PartialCachingControl()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
