using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ToolboxData("<{0}:RequiredFieldValidator runat=\"server\" ErrorMessage=\"RequiredFieldValidator\"></{0}:RequiredFieldValidator>")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RequiredFieldValidator : BaseValidator
{
	[Themeable(false)]
	[WebSysDescription("")]
	[DefaultValue("")]
	[WebCategory("Behavior")]
	public string InitialValue
	{
		get
		{
			return ViewState.GetString("InitialValue", "");
		}
		set
		{
			ViewState["InitialValue"] = value;
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		if (RenderUplevel)
		{
			RegisterExpandoAttribute(ClientID, "evaluationfunction", "RequiredFieldValidatorEvaluateIsValid");
			RegisterExpandoAttribute(ClientID, "initialvalue", InitialValue, encode: true);
		}
		base.AddAttributesToRender(writer);
	}

	protected override bool EvaluateIsValid()
	{
		return GetControlValidationValue(ControlToValidate) != InitialValue;
	}
}
