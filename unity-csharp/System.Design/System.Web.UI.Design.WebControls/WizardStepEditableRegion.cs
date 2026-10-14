using System.Web.UI.WebControls;
using Unity;

namespace System.Web.UI.Design.WebControls;

public class WizardStepEditableRegion : EditableDesignerRegion
{
	public WizardStepBase Step
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WizardStepEditableRegion(WizardDesigner designer, WizardStepBase wizardStep)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
