using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ToolboxData("<{0}:RangeValidator runat=\"server\" ErrorMessage=\"RangeValidator\"></{0}:RangeValidator>")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RangeValidator : BaseCompareValidator
{
	[WebSysDescription("")]
	[Themeable(false)]
	[DefaultValue("")]
	[WebCategory("Behavior")]
	public string MaximumValue
	{
		get
		{
			return ViewState.GetString("MaximumValue", string.Empty);
		}
		set
		{
			ViewState["MaximumValue"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[Themeable(false)]
	public string MinimumValue
	{
		get
		{
			return ViewState.GetString("MinimumValue", string.Empty);
		}
		set
		{
			ViewState["MinimumValue"] = value;
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (RenderUplevel)
		{
			RegisterExpandoAttribute(ClientID, "evaluationfunction", "RangeValidatorEvaluateIsValid");
			RegisterExpandoAttribute(ClientID, "minimumvalue", MinimumValue, encode: true);
			RegisterExpandoAttribute(ClientID, "maximumvalue", MaximumValue, encode: true);
		}
	}

	protected override bool ControlPropertiesValid()
	{
		if (!BaseCompareValidator.CanConvert(MinimumValue, Type))
		{
			throw new HttpException("Minimum value cannot be converterd to type " + Type);
		}
		if (!BaseCompareValidator.CanConvert(MaximumValue, Type))
		{
			throw new HttpException("Maximum value cannot be converterd to type " + Type);
		}
		if (Type != ValidationDataType.String && BaseCompareValidator.Compare(MinimumValue, MaximumValue, ValidationCompareOperator.GreaterThan, Type))
		{
			throw new HttpException("Maximum value must be equal or bigger than Minimum value");
		}
		return base.ControlPropertiesValid();
	}

	protected override bool EvaluateIsValid()
	{
		string controlValidationValue = GetControlValidationValue(ControlToValidate);
		if (controlValidationValue == null)
		{
			return true;
		}
		controlValidationValue = controlValidationValue.Trim();
		if (controlValidationValue.Length == 0)
		{
			return true;
		}
		if (BaseCompareValidator.Compare(controlValidationValue, MinimumValue, ValidationCompareOperator.GreaterThanEqual, Type) && BaseCompareValidator.Compare(controlValidationValue, MaximumValue, ValidationCompareOperator.LessThanEqual, Type))
		{
			return true;
		}
		return false;
	}
}
