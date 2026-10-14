using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Browsable(false)]
public sealed class CompleteWizardStep : TemplatedWizardStep
{
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Filterable(false)]
	[Browsable(false)]
	[Themeable(false)]
	public override WizardStepType StepType
	{
		get
		{
			return WizardStepType.Complete;
		}
		set
		{
			throw new InvalidOperationException();
		}
	}

	[Localizable(true)]
	public override string Title
	{
		get
		{
			object obj = ViewState["TitleText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Complete");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("TitleText");
			}
			else
			{
				ViewState["TitleText"] = value;
			}
		}
	}
}
