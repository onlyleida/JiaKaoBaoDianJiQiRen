using System.Web.UI.WebControls;
using Unity;

namespace System.Web.UI.Design.WebControls;

public class WizardStepTemplatedEditableRegion : TemplatedEditableDesignerRegion
{
	public WizardStepBase Step
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WizardStepTemplatedEditableRegion(TemplateDefinition templateDefinition, WizardStepBase wizardStep)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
