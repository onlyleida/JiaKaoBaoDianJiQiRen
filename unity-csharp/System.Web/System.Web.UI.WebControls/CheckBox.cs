using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Globalization;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.CheckBoxDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[DefaultEvent("CheckedChanged")]
[DefaultProperty("Text")]
[ControlValueProperty("Checked", null)]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CheckBox : WebControl, IPostBackDataHandler, ICheckBoxControl
{
	private string render_type;

	private AttributeCollection common_attrs;

	private AttributeCollection inputAttributes;

	private StateBag inputAttributesState;

	private AttributeCollection labelAttributes;

	private StateBag labelAttributesState;

	private static readonly object EventCheckedChanged = new object();

	[Themeable(false)]
	[DefaultValue(false)]
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
	[WebSysDescription("")]
	[WebCategory("Behavior")]
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

	[DefaultValue(false)]
	[Bindable(true, BindingDirection.TwoWay)]
	[Themeable(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool Checked
	{
		get
		{
			return ViewState.GetBool("Checked", def: false);
		}
		set
		{
			ViewState["Checked"] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public AttributeCollection InputAttributes
	{
		get
		{
			if (inputAttributes == null)
			{
				if (inputAttributesState == null)
				{
					inputAttributesState = new StateBag(ignoreCase: true);
					if (IsTrackingViewState)
					{
						inputAttributesState.TrackViewState();
					}
				}
				inputAttributes = new AttributeCollection(inputAttributesState);
			}
			return inputAttributes;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public AttributeCollection LabelAttributes
	{
		get
		{
			if (labelAttributes == null)
			{
				if (labelAttributesState == null)
				{
					labelAttributesState = new StateBag(ignoreCase: true);
					if (IsTrackingViewState)
					{
						labelAttributesState.TrackViewState();
					}
				}
				labelAttributes = new AttributeCollection(labelAttributesState);
			}
			return labelAttributes;
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[Localizable(true)]
	[Bindable(true)]
	[DefaultValue("")]
	public virtual string Text
	{
		get
		{
			return ViewState.GetString("Text", string.Empty);
		}
		set
		{
			ViewState["Text"] = value;
		}
	}

	[WebSysDescription("")]
	[DefaultValue(TextAlign.Right)]
	[WebCategory("Appearance")]
	public virtual TextAlign TextAlign
	{
		get
		{
			return (TextAlign)ViewState.GetInt("TextAlign", 2);
		}
		set
		{
			if (value != TextAlign.Left && value != TextAlign.Right)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["TextAlign"] = value;
		}
	}

	[Themeable(false)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
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

	internal virtual string NameAttribute => UniqueID;

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event EventHandler CheckedChanged
	{
		add
		{
			Events.AddHandler(EventCheckedChanged, value);
		}
		remove
		{
			Events.RemoveHandler(EventCheckedChanged, value);
		}
	}

	public CheckBox()
		: base(HtmlTextWriterTag.Input)
	{
		render_type = "checkbox";
	}

	internal CheckBox(string render_type)
		: base(HtmlTextWriterTag.Input)
	{
		this.render_type = render_type;
	}

	protected virtual void OnCheckedChanged(EventArgs e)
	{
		((EventHandler)Events[EventCheckedChanged])?.Invoke(this, e);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			base.LoadViewState(null);
			return;
		}
		Triplet triplet = (Triplet)savedState;
		base.LoadViewState(triplet.First);
		if (triplet.Second != null)
		{
			if (inputAttributesState == null)
			{
				inputAttributesState = new StateBag(ignoreCase: true);
				inputAttributesState.TrackViewState();
			}
			inputAttributesState.LoadViewState(triplet.Second);
		}
		if (triplet.Third != null)
		{
			if (labelAttributesState == null)
			{
				labelAttributesState = new StateBag(ignoreCase: true);
				labelAttributesState.TrackViewState();
			}
			labelAttributesState.LoadViewState(triplet.Third);
		}
	}

	protected override object SaveViewState()
	{
		object obj = base.SaveViewState();
		object obj2 = null;
		object obj3 = null;
		if (inputAttributesState != null)
		{
			obj2 = inputAttributesState.SaveViewState();
		}
		if (labelAttributesState != null)
		{
			obj3 = labelAttributesState.SaveViewState();
		}
		if (obj == null && obj2 == null && obj3 == null)
		{
			return null;
		}
		return new Triplet(obj, obj2, obj3);
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (inputAttributesState != null)
		{
			inputAttributesState.TrackViewState();
		}
		if (labelAttributesState != null)
		{
			labelAttributesState.TrackViewState();
		}
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		if (page != null && IsEnabled)
		{
			page.RegisterRequiresPostBack(this);
			page.RegisterEnabledControl(this);
		}
	}

	private static bool IsInputOrCommonAttr(string attname)
	{
		attname = attname.ToUpper(Helpers.InvariantCulture);
		switch (attname)
		{
		case "VALUE":
		case "CHECKED":
		case "SIZE":
		case "MAXLENGTH":
		case "SRC":
		case "ALT":
		case "USEMAP":
		case "DISABLED":
		case "READONLY":
		case "ACCEPT":
		case "ACCESSKEY":
		case "TABINDEX":
		case "ONFOCUS":
		case "ONBLUR":
		case "ONSELECT":
		case "ONCHANGE":
		case "ONCLICK":
		case "ONDBLCLICK":
		case "ONMOUSEDOWN":
		case "ONMOUSEUP":
		case "ONMOUSEOVER":
		case "ONMOUSEMOVE":
		case "ONMOUSEOUT":
		case "ONKEYPRESS":
		case "ONKEYDOWN":
		case "ONKEYUP":
			return true;
		default:
			return false;
		}
	}

	private bool AddAttributesForSpan(HtmlTextWriter writer)
	{
		if (HasAttributes)
		{
			AttributeCollection attributeCollection = Attributes;
			ICollection keys = attributeCollection.Keys;
			string[] array = new string[keys.Count];
			keys.CopyTo(array, 0);
			string[] array2 = array;
			foreach (string text in array2)
			{
				if (IsInputOrCommonAttr(text))
				{
					if (common_attrs == null)
					{
						common_attrs = new AttributeCollection(new StateBag());
					}
					common_attrs[text] = Attributes[text];
					attributeCollection.Remove(text);
				}
			}
			if (attributeCollection.Count > 0)
			{
				attributeCollection.AddAttributes(writer);
				return true;
			}
		}
		return false;
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		Page page = Page;
		if (page != null)
		{
			page.VerifyRenderingInServerForm(this);
			page.ClientScript.RegisterForEventValidation(UniqueID);
		}
		bool flag = ControlStyleCreated && !ControlStyle.IsEmpty;
		bool isEnabled = IsEnabled;
		if (!isEnabled)
		{
			if (!RenderingCompatibilityLessThan40)
			{
				ControlStyle.PrependCssClass(WebControl.DisabledCssClass);
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Disabled, "disabled", fEncode: false);
			}
			flag = true;
		}
		if (flag)
		{
			AddDisplayStyleAttribute(writer);
			ControlStyle.AddAttributesToRender(writer, this);
		}
		string toolTip = ToolTip;
		if (toolTip != null && toolTip.Length > 0)
		{
			writer.AddAttribute("title", toolTip);
			flag = true;
		}
		if (HasAttributes && AddAttributesForSpan(writer))
		{
			flag = true;
		}
		if (flag)
		{
			writer.RenderBeginTag(HtmlTextWriterTag.Span);
		}
		if (TextAlign == TextAlign.Right)
		{
			RenderInput(writer, isEnabled);
			RenderLabel(writer);
		}
		else
		{
			RenderLabel(writer);
			RenderInput(writer, isEnabled);
		}
		if (flag)
		{
			writer.RenderEndTag();
		}
	}

	private void RenderInput(HtmlTextWriter w, bool enabled)
	{
		if (ClientID != null && ClientID.Length > 0)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Id, ClientID);
		}
		w.AddAttribute(HtmlTextWriterAttribute.Type, render_type);
		string nameAttribute = NameAttribute;
		if (nameAttribute != null && nameAttribute.Length > 0)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Name, nameAttribute);
		}
		InternalAddAttributesToRender(w, enabled);
		AddAttributesToRender(w);
		if (Checked)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Checked, "checked", fEncode: false);
		}
		if (AutoPostBack)
		{
			Page page = Page;
			string text = ((page != null) ? page.ClientScript.GetPostBackEventReference(GetPostBackOptions(), registerForEventValidation: true) : string.Empty);
			text = "setTimeout('" + text.Replace("\\", "\\\\").Replace("'", "\\'") + "', 0)";
			if (common_attrs != null && common_attrs["onclick"] != null)
			{
				text = ClientScriptManager.EnsureEndsWithSemicolon(common_attrs["onclick"]) + text;
				common_attrs.Remove("onclick");
			}
			w.AddAttribute(HtmlTextWriterAttribute.Onclick, text);
		}
		if (AccessKey.Length > 0)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Accesskey, AccessKey);
		}
		if (TabIndex != 0)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Tabindex, TabIndex.ToString(NumberFormatInfo.InvariantInfo));
		}
		if (common_attrs != null)
		{
			common_attrs.AddAttributes(w);
		}
		if (inputAttributes != null)
		{
			inputAttributes.AddAttributes(w);
		}
		w.RenderBeginTag(HtmlTextWriterTag.Input);
		w.RenderEndTag();
	}

	private void RenderLabel(HtmlTextWriter w)
	{
		string text = Text;
		if (text.Length > 0)
		{
			if (labelAttributes != null)
			{
				labelAttributes.AddAttributes(w);
			}
			w.AddAttribute(HtmlTextWriterAttribute.For, ClientID);
			w.RenderBeginTag(HtmlTextWriterTag.Label);
			w.Write(text);
			w.RenderEndTag();
		}
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		if (!IsEnabled)
		{
			return false;
		}
		string text = postCollection[postDataKey];
		bool flag = text != null && text.Length > 0;
		if (Checked != flag)
		{
			Checked = flag;
			return true;
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		ValidateEvent(UniqueID, string.Empty);
		if (CausesValidation)
		{
			Page?.Validate(ValidationGroup);
		}
		OnCheckedChanged(EventArgs.Empty);
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
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

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
	}

	internal virtual void InternalAddAttributesToRender(HtmlTextWriter w, bool enabled)
	{
		if (!enabled)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Disabled, "disabled", fEncode: false);
		}
	}
}
