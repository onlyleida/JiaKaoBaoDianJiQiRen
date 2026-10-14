using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.CompilerServices;
using System.Security.Permissions;
using System.Text;
using System.Text.RegularExpressions;
using Unity;

namespace System.Web.UI.WebControls;

[ToolboxData("<{0}:RegularExpressionValidator runat=\"server\" ErrorMessage=\"RegularExpressionValidator\"></{0}:RegularExpressionValidator>")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RegularExpressionValidator : BaseValidator
{
	[Themeable(false)]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.WebControls.RegexTypeEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public string ValidationExpression
	{
		get
		{
			return ViewState.GetString("ValidationExpression", "");
		}
		set
		{
			ViewState["ValidationExpression"] = value;
		}
	}

	public int? MatchTimeout
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		if (RenderUplevel)
		{
			RegisterExpandoAttribute(ClientID, "evaluationfunction", "RegularExpressionValidatorEvaluateIsValid");
			if (ValidationExpression.Length > 0)
			{
				RegisterExpandoAttribute(ClientID, "validationexpression", ValidationExpression, encode: true);
			}
		}
		base.AddAttributesToRender(writer);
	}

	protected override bool EvaluateIsValid()
	{
		if (GetControlValidationValue(ControlToValidate).Trim() == "")
		{
			return true;
		}
		StringBuilder stringBuilder = new StringBuilder(ValidationExpression);
		if (stringBuilder.Length == 0 || stringBuilder[0] != '^')
		{
			stringBuilder.Insert(0, '^');
		}
		if (stringBuilder[stringBuilder.Length - 1] != '$')
		{
			stringBuilder.Append('$');
		}
		return Regex.IsMatch(GetControlValidationValue(ControlToValidate), stringBuilder.ToString());
	}
}
