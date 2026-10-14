using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ToolboxData("<{0}:CompareValidator runat=\"server\" ErrorMessage=\"CompareValidator\"></{0}:CompareValidator>")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CompareValidator : BaseCompareValidator
{
	[TypeConverter(typeof(ValidatedControlConverter))]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[Themeable(false)]
	[DefaultValue("")]
	public string ControlToCompare
	{
		get
		{
			return ViewState.GetString("ControlToCompare", string.Empty);
		}
		set
		{
			ViewState["ControlToCompare"] = value;
		}
	}

	[DefaultValue(ValidationCompareOperator.Equal)]
	[WebSysDescription("")]
	[Themeable(false)]
	[WebCategory("Behavior")]
	public ValidationCompareOperator Operator
	{
		get
		{
			return (ValidationCompareOperator)ViewState.GetInt("Operator", 0);
		}
		set
		{
			ViewState["Operator"] = (int)value;
		}
	}

	[WebCategory("Behavior")]
	[Themeable(false)]
	[WebSysDescription("")]
	[DefaultValue("")]
	public string ValueToCompare
	{
		get
		{
			return ViewState.GetString("ValueToCompare", string.Empty);
		}
		set
		{
			ViewState["ValueToCompare"] = value;
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		if (RenderUplevel)
		{
			RegisterExpandoAttribute(ClientID, "evaluationfunction", "CompareValidatorEvaluateIsValid");
			if (ControlToCompare.Length > 0)
			{
				RegisterExpandoAttribute(ClientID, "controltocompare", GetControlRenderID(ControlToCompare));
			}
			if (ValueToCompare.Length > 0)
			{
				RegisterExpandoAttribute(ClientID, "valuetocompare", ValueToCompare, encode: true);
			}
			RegisterExpandoAttribute(ClientID, "operator", Operator.ToString());
		}
		base.AddAttributesToRender(writer);
	}

	protected override bool ControlPropertiesValid()
	{
		if (Operator != ValidationCompareOperator.DataTypeCheck && ControlToCompare.Length == 0 && !BaseCompareValidator.CanConvert(ValueToCompare, Type, CultureInvariantValues))
		{
			throw new HttpException($"Unable to convert the value: {ValueToCompare} as a {Enum.GetName(typeof(ValidationDataType), Type)}");
		}
		if (ControlToCompare.Length > 0)
		{
			if (string.CompareOrdinal(ControlToCompare, ControlToValidate) == 0)
			{
				throw new HttpException($"Control '{ID}' cannot have the same value '{ControlToCompare}' for both ControlToValidate and ControlToCompare.");
			}
			CheckControlValidationProperty(ControlToCompare, string.Empty);
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
		string controlToCompare = ControlToCompare;
		string rightText = ((!string.IsNullOrEmpty(controlToCompare)) ? GetControlValidationValue(controlToCompare) : ValueToCompare);
		return BaseCompareValidator.Compare(GetControlValidationValue(ControlToValidate), cultureInvariantLeftText: false, rightText, CultureInvariantValues, Operator, Type);
	}
}
