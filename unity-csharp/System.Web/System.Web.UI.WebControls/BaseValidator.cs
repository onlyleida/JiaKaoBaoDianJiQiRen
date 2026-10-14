using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Web.Configuration;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.BaseValidatorDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultProperty("ErrorMessage")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class BaseValidator : Label, IValidator
{
	private bool render_uplevel;

	private bool valid;

	private Color forecolor;

	private bool pre_render_called;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override string AssociatedControlID
	{
		get
		{
			return base.AssociatedControlID;
		}
		set
		{
			base.AssociatedControlID = value;
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", string.Empty);
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	[DefaultValue(false)]
	[Themeable(false)]
	public bool SetFocusOnError
	{
		get
		{
			return ViewState.GetBool("SetFocusOnError", def: false);
		}
		set
		{
			ViewState["SetFocusOnError"] = value;
		}
	}

	[DefaultValue("")]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[MonoTODO("Why override?")]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[Themeable(false)]
	[IDReferenceProperty(typeof(Control))]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[TypeConverter(typeof(ValidatedControlConverter))]
	public string ControlToValidate
	{
		get
		{
			return ViewState.GetString("ControlToValidate", string.Empty);
		}
		set
		{
			ViewState["ControlToValidate"] = value;
		}
	}

	[Themeable(false)]
	[DefaultValue(ValidatorDisplay.Static)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public ValidatorDisplay Display
	{
		get
		{
			return (ValidatorDisplay)ViewState.GetInt("Display", 1);
		}
		set
		{
			ViewState["Display"] = (int)value;
		}
	}

	[DefaultValue(true)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[Themeable(false)]
	public bool EnableClientScript
	{
		get
		{
			return ViewState.GetBool("EnableClientScript", def: true);
		}
		set
		{
			ViewState["EnableClientScript"] = value;
		}
	}

	public override bool Enabled
	{
		get
		{
			return ViewState.GetBool("BaseValidatorEnabled", def: true);
		}
		set
		{
			ViewState["BaseValidatorEnabled"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public string ErrorMessage
	{
		get
		{
			return ViewState.GetString("ErrorMessage", string.Empty);
		}
		set
		{
			ViewState["ErrorMessage"] = value;
		}
	}

	[DefaultValue(typeof(Color), "Red")]
	public override Color ForeColor
	{
		get
		{
			return forecolor;
		}
		set
		{
			forecolor = value;
			base.ForeColor = value;
		}
	}

	[WebCategory("Misc")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Themeable(false)]
	[DefaultValue(true)]
	[Browsable(false)]
	public bool IsValid
	{
		get
		{
			return valid;
		}
		set
		{
			valid = value;
		}
	}

	protected bool PropertiesValid
	{
		get
		{
			if (NamingContainer.FindControl(ControlToValidate) == null)
			{
				return false;
			}
			return true;
		}
	}

	protected bool RenderUplevel => render_uplevel;

	protected bool IsUnobtrusive
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected BaseValidator()
	{
		valid = true;
		ForeColor = Color.Red;
	}

	internal bool GetRenderUplevel()
	{
		return render_uplevel;
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		if (render_uplevel)
		{
			if (ID == null)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Id, ClientID);
			}
			if (ControlToValidate != string.Empty)
			{
				RegisterExpandoAttribute(ClientID, "controltovalidate", GetControlRenderID(ControlToValidate));
			}
			if (ErrorMessage != string.Empty)
			{
				RegisterExpandoAttribute(ClientID, "errormessage", ErrorMessage, encode: true);
			}
			if (ValidationGroup != string.Empty)
			{
				RegisterExpandoAttribute(ClientID, "validationGroup", ValidationGroup, encode: true);
			}
			if (SetFocusOnError)
			{
				RegisterExpandoAttribute(ClientID, "focusOnError", "t");
			}
			bool isEnabled = IsEnabled;
			if (!isEnabled)
			{
				RegisterExpandoAttribute(ClientID, "enabled", "False");
			}
			if (isEnabled && !IsValid)
			{
				RegisterExpandoAttribute(ClientID, "isvalid", "False");
			}
			else if (Display == ValidatorDisplay.Static)
			{
				writer.AddStyleAttribute("visibility", "hidden");
			}
			else
			{
				writer.AddStyleAttribute("display", "none");
			}
			if (Display != ValidatorDisplay.Static)
			{
				RegisterExpandoAttribute(ClientID, "display", Display.ToString());
			}
		}
		base.AddAttributesToRender(writer);
	}

	internal void RegisterExpandoAttribute(string controlId, string attributeName, string attributeValue)
	{
		RegisterExpandoAttribute(controlId, attributeName, attributeValue, encode: false);
	}

	internal void RegisterExpandoAttribute(string controlId, string attributeName, string attributeValue, bool encode)
	{
		Page page = Page;
		if (page.ScriptManager != null)
		{
			page.ScriptManager.RegisterExpandoAttributeExternal(this, controlId, attributeName, attributeValue, encode);
		}
		else
		{
			page.ClientScript.RegisterExpandoAttribute(controlId, attributeName, attributeValue, encode);
		}
	}

	protected void CheckControlValidationProperty(string name, string propertyName)
	{
		if (GetValidationProperty(NamingContainer.FindControl(name) ?? throw new HttpException($"Unable to find control id '{name}'.")) == null)
		{
			throw new HttpException($"Unable to find ValidationProperty attribute '{propertyName}' on control '{name}'");
		}
	}

	protected virtual bool ControlPropertiesValid()
	{
		if (ControlToValidate.Length == 0)
		{
			throw new HttpException($"ControlToValidate property of '{ID}' cannot be blank.");
		}
		CheckControlValidationProperty(ControlToValidate, string.Empty);
		return true;
	}

	protected virtual bool DetermineRenderUplevel()
	{
		if (!EnableClientScript)
		{
			return false;
		}
		return UplevelHelper.IsUplevel(HttpCapabilitiesBase.GetUserAgentForDetection(HttpContext.Current.Request));
	}

	protected abstract bool EvaluateIsValid();

	protected string GetControlRenderID(string name)
	{
		return NamingContainer.FindControl(name)?.ClientID;
	}

	protected string GetControlValidationValue(string name)
	{
		Control control = NamingContainer.FindControl(name);
		if (control == null)
		{
			return null;
		}
		PropertyDescriptor validationProperty = GetValidationProperty(control);
		if (validationProperty == null)
		{
			return null;
		}
		object value = validationProperty.GetValue(control);
		if (value == null)
		{
			return string.Empty;
		}
		if (value is ListItem)
		{
			return ((ListItem)value).Value;
		}
		return value.ToString();
	}

	public static PropertyDescriptor GetValidationProperty(object component)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(component);
		foreach (Attribute attribute in TypeDescriptor.GetAttributes(component))
		{
			if (attribute is ValidationPropertyAttribute { Name: not null } validationPropertyAttribute)
			{
				return properties[validationPropertyAttribute.Name];
			}
		}
		return null;
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page page = Page;
		if (page != null)
		{
			page.Validators.Add(this);
			page.GetValidators(ValidationGroup).Add(this);
		}
		base.OnInit(e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		pre_render_called = true;
		ControlPropertiesValid();
		render_uplevel = DetermineRenderUplevel();
		if (render_uplevel)
		{
			RegisterValidatorCommonScript();
		}
	}

	protected internal override void OnUnload(EventArgs e)
	{
		Page page = Page;
		if (page != null)
		{
			page.Validators.Remove(this);
			if (!string.IsNullOrEmpty(ValidationGroup))
			{
				page.GetValidators(ValidationGroup).Remove(this);
			}
		}
		base.OnUnload(e);
	}

	protected void RegisterValidatorCommonScript()
	{
		Page page = Page;
		if (page != null)
		{
			if (page.ScriptManager != null)
			{
				page.ScriptManager.RegisterClientScriptResourceExternal(this, typeof(BaseValidator), "WebUIValidation_2.0.js");
				page.ScriptManager.RegisterClientScriptBlockExternal(this, typeof(BaseValidator), "ValidationInitializeScript", page.ValidationInitializeScript, addScriptTags: true);
				page.ScriptManager.RegisterOnSubmitStatementExternal(this, typeof(BaseValidator), "ValidationOnSubmitStatement", page.ValidationOnSubmitStatement);
				page.ScriptManager.RegisterStartupScriptExternal(this, typeof(BaseValidator), "ValidationStartupScript", page.ValidationStartupScript, addScriptTags: true);
			}
			else if (!page.ClientScript.IsClientScriptIncludeRegistered(typeof(BaseValidator), "Mono-System.Web-ValidationClientScriptBlock"))
			{
				page.ClientScript.RegisterClientScriptInclude(typeof(BaseValidator), "Mono-System.Web-ValidationClientScriptBlock", page.ClientScript.GetWebResourceUrl(typeof(BaseValidator), "WebUIValidation_2.0.js"));
				page.ClientScript.RegisterClientScriptBlock(typeof(BaseValidator), "Mono-System.Web-ValidationClientScriptBlock.Initialize", page.ValidationInitializeScript, addScriptTags: true);
				page.ClientScript.RegisterOnSubmitStatement(typeof(BaseValidator), "Mono-System.Web-ValidationOnSubmitStatement", page.ValidationOnSubmitStatement);
				page.ClientScript.RegisterStartupScript(typeof(BaseValidator), "Mono-System.Web-ValidationStartupScript", page.ValidationStartupScript, addScriptTags: true);
			}
		}
	}

	protected virtual void RegisterValidatorDeclaration()
	{
		Page page = Page;
		if (page != null)
		{
			if (page.ScriptManager != null)
			{
				page.ScriptManager.RegisterArrayDeclarationExternal(this, "Page_Validators", "document.getElementById ('" + ClientID + "')");
				page.ScriptManager.RegisterStartupScriptExternal(this, typeof(BaseValidator), ClientID + "DisposeScript", "\ndocument.getElementById('" + ClientID + "').dispose = function() {\n    Array.remove(Page_Validators, document.getElementById('" + ClientID + "'));\n}\n", addScriptTags: true);
			}
			else
			{
				page.ClientScript.RegisterArrayDeclaration("Page_Validators", "document.getElementById ('" + ClientID + "')");
			}
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (!IsEnabled && !EnableClientScript)
		{
			return;
		}
		if (render_uplevel)
		{
			RegisterValidatorDeclaration();
		}
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		bool isValid = IsValid;
		if (!pre_render_called)
		{
			flag = true;
			flag2 = true;
		}
		else if (render_uplevel)
		{
			flag = true;
			flag2 = Display != ValidatorDisplay.None;
		}
		else if (Display != ValidatorDisplay.None)
		{
			flag = !isValid;
			flag2 = !isValid;
			flag3 = isValid && Display == ValidatorDisplay.Static;
		}
		if (flag)
		{
			AddAttributesToRender(writer);
			writer.RenderBeginTag(HtmlTextWriterTag.Span);
		}
		if (flag2 | flag3)
		{
			string value;
			if (flag2)
			{
				value = Text;
				if (string.IsNullOrEmpty(value))
				{
					value = ErrorMessage;
				}
			}
			else
			{
				value = "&nbsp;";
			}
			writer.Write(value);
		}
		if (flag)
		{
			writer.RenderEndTag();
		}
	}

	public void Validate()
	{
		if (IsEnabled && Visible)
		{
			IsValid = ControlPropertiesValid() && EvaluateIsValid();
		}
		else
		{
			IsValid = true;
		}
	}
}
