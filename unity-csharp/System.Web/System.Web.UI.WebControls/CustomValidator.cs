using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultEvent("ServerValidate")]
[ToolboxData("<{0}:CustomValidator runat=\"server\" ErrorMessage=\"CustomValidator\"></{0}:CustomValidator>")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CustomValidator : BaseValidator
{
	private static readonly object serverValidateEvent = new object();

	private EventHandlerList events = new EventHandlerList();

	[DefaultValue("")]
	[Themeable(false)]
	[WebCategory("Behavior")]
	[WebSysDescription("")]
	public string ClientValidationFunction
	{
		get
		{
			return ViewState.GetString("ClientValidationFunction", string.Empty);
		}
		set
		{
			ViewState["ClientValidationFunction"] = value;
		}
	}

	[DefaultValue(false)]
	[Themeable(false)]
	public bool ValidateEmptyText
	{
		get
		{
			return ViewState.GetBool("ValidateEmptyText", def: false);
		}
		set
		{
			ViewState["ValidateEmptyText"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public event ServerValidateEventHandler ServerValidate
	{
		add
		{
			events.AddHandler(serverValidateEvent, value);
		}
		remove
		{
			events.RemoveHandler(serverValidateEvent, value);
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (RenderUplevel)
		{
			RegisterExpandoAttribute(ClientID, "evaluationfunction", "CustomValidatorEvaluateIsValid");
			if (ValidateEmptyText)
			{
				RegisterExpandoAttribute(ClientID, "validateemptytext", "true");
			}
			string clientValidationFunction = ClientValidationFunction;
			if (!string.IsNullOrEmpty(clientValidationFunction))
			{
				RegisterExpandoAttribute(ClientID, "clientvalidationfunction", clientValidationFunction, encode: true);
			}
		}
	}

	protected override bool ControlPropertiesValid()
	{
		if (string.IsNullOrEmpty(ControlToValidate))
		{
			return true;
		}
		return base.ControlPropertiesValid();
	}

	protected override bool EvaluateIsValid()
	{
		string controlToValidate = ControlToValidate;
		if (!string.IsNullOrEmpty(controlToValidate))
		{
			string controlValidationValue = GetControlValidationValue(controlToValidate);
			if (string.IsNullOrEmpty(controlValidationValue) && !ValidateEmptyText)
			{
				return true;
			}
			return OnServerValidate(controlValidationValue);
		}
		return OnServerValidate(string.Empty);
	}

	protected virtual bool OnServerValidate(string value)
	{
		if (events[serverValidateEvent] is ServerValidateEventHandler serverValidateEventHandler)
		{
			ServerValidateEventArgs e = new ServerValidateEventArgs(value, isValid: true);
			serverValidateEventHandler(this, e);
			return e.IsValid;
		}
		return true;
	}
}
