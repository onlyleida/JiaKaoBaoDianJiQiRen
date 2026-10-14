using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Browsable(false)]
public sealed class CreateUserWizardStep : TemplatedWizardStep
{
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool AllowReturn
	{
		get
		{
			return ViewState.GetBool("AllowReturn", def: false);
		}
		set
		{
			ViewState["AllowReturn"] = value;
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
			return Locale.GetText("Sign Up for Your New Account");
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

	[Filterable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Themeable(false)]
	public override WizardStepType StepType
	{
		get
		{
			return WizardStepType.Auto;
		}
		set
		{
			throw new InvalidOperationException();
		}
	}
}
