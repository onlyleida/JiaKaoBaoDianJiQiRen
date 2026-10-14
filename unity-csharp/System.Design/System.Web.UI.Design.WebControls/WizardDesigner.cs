using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class WizardDesigner : CompositeControlDesigner
{
	protected bool DisplaySideBar
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WizardDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void AddDesignerRegions(DesignerRegionCollection regions)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void ConvertToCustomNavigationTemplate()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void ConvertToTemplate(string description, IComponent component, string templateName, string[] keys)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void ResetTemplate(string description, IComponent component, string templateName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
