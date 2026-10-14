using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using System.Text;

namespace System.Web.UI.WebControls;

[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[DefaultProperty("Text")]
[ValidationProperty("Text")]
[DefaultEvent("TextChanged")]
[ControlBuilder(typeof(TextBoxControlBuilder))]
[SupportsEventValidation]
[Designer("System.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ParseChildren(true, "Text")]
[ControlValueProperty("Text", null)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TextBox : WebControl, IPostBackDataHandler, IEditableTextControl, ITextControl
{
	private static readonly string[] VCardValues = new string[32]
	{
		null, null, "vCard.Cellular", "vCard.Company", "vCard.Department", "vCard.DisplayName", "vCard.Email", "vCard.FirstName", "vCard.Gender", "vCard.Home.City",
		"HomeCountry", "vCard.Home.Fax", "vCard.Home.Phone", "vCard.Home.State", "vCard.Home.StreetAddress", "vCard.Home.ZipCode", "vCard.Home.page", "vCard.JobTitle", "vCard.LastName", "vCard.MiddleName",
		"vCard.Notes", "vCard.Office", "vCard.Pager", "vCard.Business.City", "BusinessCountry", "vCard.Business.Fax", "vCard.Business.Phone", "vCard.Business.State", "vCard.Business.StreetAddress", "vCard.Business.Url",
		"vCard.Business.ZipCode", "search"
	};

	private static readonly object TextChangedEvent = new object();

	[Themeable(false)]
	[DefaultValue(AutoCompleteType.None)]
	public virtual AutoCompleteType AutoCompleteType
	{
		get
		{
			object obj = ViewState["AutoCompleteType"];
			if (obj == null)
			{
				return AutoCompleteType.None;
			}
			return (AutoCompleteType)obj;
		}
		set
		{
			ViewState["AutoCompleteType"] = value;
		}
	}

	[DefaultValue(false)]
	[Themeable(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool AutoPostBack
	{
		get
		{
			return ViewState.GetBool("AutoPostBack", def: false);
		}
		set
		{
			ViewState["AutoPostBack"] = value;
		}
	}

	[DefaultValue(false)]
	[Themeable(false)]
	public virtual bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: false);
		}
		set
		{
			ViewState["CausesValidation"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DefaultValue(0)]
	public virtual int Columns
	{
		get
		{
			return ViewState.GetInt("Columns", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value", "Columns value has to be 0 for 'not set' or bigger than 0.");
			}
			ViewState["Columns"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(0)]
	[Themeable(false)]
	public virtual int MaxLength
	{
		get
		{
			return ViewState.GetInt("MaxLength", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value", "MaxLength value has to be 0 for 'not set' or bigger than 0.");
			}
			ViewState["MaxLength"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[Themeable(false)]
	[DefaultValue(false)]
	[Bindable(true)]
	public virtual bool ReadOnly
	{
		get
		{
			return ViewState.GetBool("ReadOnly", def: false);
		}
		set
		{
			ViewState["ReadOnly"] = value;
		}
	}

	[Themeable(false)]
	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(0)]
	public virtual int Rows
	{
		get
		{
			return ViewState.GetInt("Rows", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value", "Rows value has to be 0 for 'not set' or bigger than 0.");
			}
			ViewState["Rows"] = value;
		}
	}

	protected override HtmlTextWriterTag TagKey
	{
		get
		{
			if (TextMode != TextBoxMode.MultiLine)
			{
				return HtmlTextWriterTag.Input;
			}
			return HtmlTextWriterTag.Textarea;
		}
	}

	[Localizable(true)]
	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[Editor("System.ComponentModel.Design.MultilineStringEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.EncodedInnerDefaultProperty)]
	[DefaultValue("")]
	[Bindable(true, BindingDirection.TwoWay)]
	public virtual string Text
	{
		get
		{
			return ViewState.GetString("Text", "");
		}
		set
		{
			ViewState["Text"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[Themeable(false)]
	[DefaultValue(TextBoxMode.SingleLine)]
	public virtual TextBoxMode TextMode
	{
		get
		{
			return (TextBoxMode)ViewState.GetInt("TextMode", 0);
		}
		set
		{
			ViewState["TextMode"] = (int)value;
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", "");
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	[WebSysDescription("")]
	[DefaultValue(true)]
	[WebCategory("Layout")]
	public virtual bool Wrap
	{
		get
		{
			return ViewState.GetBool("Wrap", def: true);
		}
		set
		{
			ViewState["Wrap"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event EventHandler TextChanged
	{
		add
		{
			Events.AddHandler(TextChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(TextChangedEvent, value);
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		Page page = Page;
		page?.VerifyRenderingInServerForm(this);
		switch (TextMode)
		{
		case TextBoxMode.MultiLine:
			if (Columns != 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Cols, Columns.ToString(), fEncode: false);
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Cols, "20", fEncode: false);
			}
			if (Rows != 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Rows, Rows.ToString(), fEncode: false);
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Rows, "2", fEncode: false);
			}
			if (!Wrap)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Wrap, "off", fEncode: false);
			}
			break;
		case TextBoxMode.SingleLine:
		case TextBoxMode.Password:
			if (TextMode == TextBoxMode.Password)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Type, "password", fEncode: false);
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Type, "text", fEncode: false);
				if (Text.Length > 0)
				{
					writer.AddAttribute(HtmlTextWriterAttribute.Value, Text);
				}
			}
			if (Columns != 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Size, Columns.ToString(), fEncode: false);
			}
			if (MaxLength != 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Maxlength, MaxLength.ToString(), fEncode: false);
			}
			if (AutoCompleteType != AutoCompleteType.None && TextMode == TextBoxMode.SingleLine)
			{
				if (AutoCompleteType != AutoCompleteType.Disabled)
				{
					writer.AddAttribute(HtmlTextWriterAttribute.VCardName, VCardValues[(int)AutoCompleteType]);
				}
				else
				{
					writer.AddAttribute(HtmlTextWriterAttribute.AutoComplete, "off", fEncode: false);
				}
			}
			break;
		}
		if (AutoPostBack)
		{
			writer.AddAttribute("onkeypress", "if (WebForm_TextBoxKeyHandler(event) == false) return false;", fEndode: false);
			if (page != null)
			{
				string postBackEventReference = page.ClientScript.GetPostBackEventReference(GetPostBackOptions(), registerForEventValidation: true);
				postBackEventReference = "setTimeout('" + postBackEventReference.Replace("\\", "\\\\").Replace("'", "\\'") + "', 0)";
				writer.AddAttribute(HtmlTextWriterAttribute.Onchange, BuildScriptAttribute("onchange", postBackEventReference));
			}
		}
		else
		{
			page?.ClientScript.RegisterForEventValidation(UniqueID, string.Empty);
		}
		if (ReadOnly)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.ReadOnly, "ReadOnly", fEncode: false);
		}
		writer.AddAttribute(HtmlTextWriterAttribute.Name, UniqueID);
		base.AddAttributesToRender(writer);
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (obj is LiteralControl literalControl)
		{
			Text = literalControl.Text;
		}
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		if (AutoPostBack)
		{
			RegisterKeyHandlerClientScript();
		}
		Page page = Page;
		if (page != null && IsEnabled)
		{
			page.RegisterEnabledControl(this);
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		RenderBeginTag(writer);
		if (TextMode == TextBoxMode.MultiLine)
		{
			writer.WriteLine();
			HttpUtility.HtmlEncode(Text, writer);
		}
		RenderEndTag(writer);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		ValidateEvent(postDataKey, string.Empty);
		if (Text != postCollection[postDataKey])
		{
			Text = postCollection[postDataKey];
			return true;
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		OnTextChanged(EventArgs.Empty);
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}

	protected override object SaveViewState()
	{
		if (TextMode == TextBoxMode.Password)
		{
			ViewState.SetItemDirty("Text", dirty: false);
		}
		return base.SaveViewState();
	}

	private PostBackOptions GetPostBackOptions()
	{
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ActionUrl = null;
		postBackOptions.ValidationGroup = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = false;
		postBackOptions.ClientSubmit = true;
		Page page = Page;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}

	private void RegisterKeyHandlerClientScript()
	{
		if (!Page.ClientScript.IsClientScriptBlockRegistered(typeof(TextBox), "KeyHandler"))
		{
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.AppendLine("function WebForm_TextBoxKeyHandler(event) {");
			stringBuilder.AppendLine("\tvar target = event.target;");
			stringBuilder.AppendLine("\tif ((target == null) || (typeof(target) == \"undefined\")) target = event.srcElement;");
			stringBuilder.AppendLine("\tif (event.keyCode == 13) {");
			stringBuilder.AppendLine("\t\tif ((typeof(target) != \"undefined\") && (target != null)) {");
			stringBuilder.AppendLine("\t\t\tif (typeof(target.onchange) != \"undefined\") {");
			stringBuilder.AppendLine("\t\t\t\ttarget.onchange();");
			stringBuilder.AppendLine("\t\t\t\tevent.cancelBubble = true;");
			stringBuilder.AppendLine("\t\t\t\tif (event.stopPropagation) event.stopPropagation();");
			stringBuilder.AppendLine("\t\t\t\treturn false;");
			stringBuilder.AppendLine("\t\t\t}");
			stringBuilder.AppendLine("\t\t}");
			stringBuilder.AppendLine("\t}");
			stringBuilder.AppendLine("\treturn true;");
			stringBuilder.AppendLine("}");
			Page.ClientScript.RegisterClientScriptBlock(typeof(TextBox), "KeyHandler", stringBuilder.ToString(), addScriptTags: true);
		}
	}

	protected virtual void OnTextChanged(EventArgs e)
	{
		((EventHandler)Events[TextChangedEvent])?.Invoke(this, e);
	}
}
