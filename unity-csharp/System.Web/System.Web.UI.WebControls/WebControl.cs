using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Themeable(true)]
[PersistChildren(false, false)]
[ParseChildren(true)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class WebControl : Control, IAttributeAccessor
{
	private const string DEFAULT_DISABLED_CSS_CLASS = "aspNetDisabled";

	private Style style;

	private HtmlTextWriterTag tag;

	private string tag_name;

	private AttributeCollection attributes;

	private StateBag attribute_state;

	private bool enabled;

	private bool track_enabled_state;

	private static char[] _script_trim_chars;

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue("")]
	public virtual string AccessKey
	{
		get
		{
			return ViewState.GetString("AccessKey", string.Empty);
		}
		set
		{
			if (value == null || value.Length < 2)
			{
				ViewState["AccessKey"] = value;
				return;
			}
			throw new ArgumentException("AccessKey can only be null, empty or a single character", "value");
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public AttributeCollection Attributes
	{
		get
		{
			if (attributes == null)
			{
				attribute_state = new StateBag(ignoreCase: true);
				if (IsTrackingViewState)
				{
					attribute_state.TrackViewState();
				}
				attributes = new AttributeCollection(attribute_state);
			}
			return attributes;
		}
	}

	[DefaultValue(typeof(Color), "")]
	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[TypeConverter(typeof(WebColorConverter))]
	public virtual Color BackColor
	{
		get
		{
			if (style == null)
			{
				return Color.Empty;
			}
			return style.BackColor;
		}
		set
		{
			ControlStyle.BackColor = value;
		}
	}

	[WebSysDescription("")]
	[TypeConverter(typeof(WebColorConverter))]
	[DefaultValue(typeof(Color), "")]
	[WebCategory("Appearance")]
	public virtual Color BorderColor
	{
		get
		{
			if (style == null)
			{
				return Color.Empty;
			}
			return style.BorderColor;
		}
		set
		{
			ControlStyle.BorderColor = value;
		}
	}

	[DefaultValue(BorderStyle.NotSet)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual BorderStyle BorderStyle
	{
		get
		{
			if (style == null)
			{
				return BorderStyle.NotSet;
			}
			return style.BorderStyle;
		}
		set
		{
			if (value < BorderStyle.NotSet || value > BorderStyle.Outset)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ControlStyle.BorderStyle = value;
		}
	}

	[DefaultValue(typeof(Unit), "")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual Unit BorderWidth
	{
		get
		{
			if (style == null)
			{
				return Unit.Empty;
			}
			return style.BorderWidth;
		}
		set
		{
			ControlStyle.BorderWidth = value;
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Style ControlStyle
	{
		get
		{
			if (style == null)
			{
				style = CreateControlStyle();
				if (IsTrackingViewState)
				{
					style.TrackViewState();
				}
			}
			return style;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool ControlStyleCreated => style != null;

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DefaultValue("")]
	[CssClassProperty]
	public virtual string CssClass
	{
		get
		{
			if (style == null)
			{
				return string.Empty;
			}
			return style.CssClass;
		}
		set
		{
			ControlStyle.CssClass = value;
		}
	}

	[Themeable(false)]
	[DefaultValue(true)]
	[Bindable(true)]
	public virtual bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			if (enabled != value)
			{
				if (IsTrackingViewState)
				{
					track_enabled_state = true;
				}
				enabled = value;
			}
		}
	}

	[Browsable(true)]
	public new virtual bool EnableTheming
	{
		get
		{
			return base.EnableTheming;
		}
		set
		{
			base.EnableTheming = value;
		}
	}

	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[WebSysDescription("")]
	public virtual FontInfo Font => ControlStyle.Font;

	[TypeConverter(typeof(WebColorConverter))]
	[DefaultValue(typeof(Color), "")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual Color ForeColor
	{
		get
		{
			if (style == null)
			{
				return Color.Empty;
			}
			return style.ForeColor;
		}
		set
		{
			ControlStyle.ForeColor = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasAttributes
	{
		get
		{
			if (attributes != null)
			{
				return attributes.Count > 0;
			}
			return false;
		}
	}

	[WebCategory("Layout")]
	[DefaultValue(typeof(Unit), "")]
	[WebSysDescription("")]
	public virtual Unit Height
	{
		get
		{
			if (style == null)
			{
				return Unit.Empty;
			}
			return style.Height;
		}
		set
		{
			ControlStyle.Height = value;
		}
	}

	[Browsable(true)]
	public override string SkinID
	{
		get
		{
			return base.SkinID;
		}
		set
		{
			base.SkinID = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Style")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public CssStyleCollection Style => Attributes.CssStyle;

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(0)]
	public virtual short TabIndex
	{
		get
		{
			return ViewState.GetShort("TabIndex", 0);
		}
		set
		{
			ViewState["TabIndex"] = value;
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue("")]
	public virtual string ToolTip
	{
		get
		{
			return ViewState.GetString("ToolTip", string.Empty);
		}
		set
		{
			ViewState["ToolTip"] = value;
		}
	}

	[DefaultValue(typeof(Unit), "")]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual Unit Width
	{
		get
		{
			if (style == null)
			{
				return Unit.Empty;
			}
			return style.Width;
		}
		set
		{
			ControlStyle.Width = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected virtual HtmlTextWriterTag TagKey => tag;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected virtual string TagName
	{
		get
		{
			if (tag_name == null)
			{
				tag_name = HtmlTextWriter.StaticGetTagName(TagKey);
			}
			return tag_name;
		}
	}

	protected internal bool IsEnabled
	{
		get
		{
			for (WebControl webControl = this; webControl != null; webControl = webControl.Parent as WebControl)
			{
				if (!webControl.Enabled)
				{
					return false;
				}
			}
			return true;
		}
	}

	public static string DisabledCssClass { get; set; }

	[Browsable(false)]
	public virtual bool SupportsDisabledAttribute => true;

	static WebControl()
	{
		_script_trim_chars = new char[1] { ';' };
		DisabledCssClass = "aspNetDisabled";
	}

	public WebControl(HtmlTextWriterTag tag)
	{
		this.tag = tag;
		enabled = true;
	}

	protected WebControl()
		: this(HtmlTextWriterTag.Span)
	{
	}

	protected WebControl(string tag)
	{
		this.tag = HtmlTextWriterTag.Unknown;
		tag_name = tag;
		enabled = true;
	}

	public void ApplyStyle(Style s)
	{
		if (s != null && !s.IsEmpty)
		{
			ControlStyle.CopyFrom(s);
		}
	}

	public void CopyBaseAttributes(WebControl controlSrc)
	{
		if (controlSrc == null)
		{
			return;
		}
		Enabled = controlSrc.Enabled;
		object obj = controlSrc.ViewState["AccessKey"];
		if (obj != null)
		{
			ViewState["AccessKey"] = obj;
		}
		obj = controlSrc.ViewState["TabIndex"];
		if (obj != null)
		{
			ViewState["TabIndex"] = obj;
		}
		obj = controlSrc.ViewState["ToolTip"];
		if (obj != null)
		{
			ViewState["ToolTip"] = obj;
		}
		if (controlSrc.attributes == null)
		{
			return;
		}
		AttributeCollection attributeCollection = Attributes;
		foreach (string key in controlSrc.attributes.Keys)
		{
			attributeCollection[key] = controlSrc.attributes[key];
		}
	}

	public void MergeStyle(Style s)
	{
		if (s != null && !s.IsEmpty)
		{
			ControlStyle.MergeWith(s);
		}
	}

	public virtual void RenderBeginTag(HtmlTextWriter writer)
	{
		AddAttributesToRender(writer);
		if (TagKey == HtmlTextWriterTag.Unknown)
		{
			writer.RenderBeginTag(TagName);
		}
		else
		{
			writer.RenderBeginTag(TagKey);
		}
	}

	public virtual void RenderEndTag(HtmlTextWriter writer)
	{
		writer.RenderEndTag();
	}

	internal string BuildScriptAttribute(string name, string tail)
	{
		AttributeCollection attributeCollection = Attributes;
		string text = attributeCollection[name];
		if (text == null || text.Length == 0)
		{
			return tail;
		}
		if (text[text.Length - 1] == ';')
		{
			text = text.TrimEnd(_script_trim_chars);
		}
		text = text + ";" + tail;
		attributeCollection.Remove(name);
		return text;
	}

	internal void AddDisplayStyleAttribute(HtmlTextWriter writer)
	{
		if (ControlStyleCreated && (!ControlStyle.BorderWidth.IsEmpty || (ControlStyle.BorderStyle != BorderStyle.None && ControlStyle.BorderStyle != BorderStyle.NotSet) || !ControlStyle.Height.IsEmpty || !ControlStyle.Width.IsEmpty))
		{
			writer.AddStyleAttribute(HtmlTextWriterStyle.Display, "inline-block");
		}
	}

	private void RenderDisabled(HtmlTextWriter writer)
	{
		if (!IsEnabled)
		{
			if (!SupportsDisabledAttribute)
			{
				ControlStyle.PrependCssClass(DisabledCssClass);
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Disabled, "disabled", fEncode: false);
			}
		}
	}

	protected virtual void AddAttributesToRender(HtmlTextWriter writer)
	{
		RenderDisabled(writer);
		if (ID != null)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Id, ClientID);
		}
		if (AccessKey != string.Empty)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Accesskey, AccessKey);
		}
		if (ToolTip != string.Empty)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Title, ToolTip);
		}
		if (TabIndex != 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Tabindex, TabIndex.ToString());
		}
		if (style != null && !style.IsEmpty)
		{
			if (TagKey == HtmlTextWriterTag.Span)
			{
				AddDisplayStyleAttribute(writer);
			}
			style.AddAttributesToRender(writer, this);
		}
		if (attributes == null)
		{
			return;
		}
		foreach (string key in attributes.Keys)
		{
			writer.AddAttribute(key, attributes[key]);
		}
	}

	protected virtual Style CreateControlStyle()
	{
		return new Style(ViewState);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null || !(savedState is Pair))
		{
			base.LoadViewState(null);
			return;
		}
		Pair pair = (Pair)savedState;
		base.LoadViewState(pair.First);
		if (ViewState["_!SB"] != null)
		{
			ControlStyle.LoadBitState();
		}
		if (pair.Second != null)
		{
			if (attribute_state == null)
			{
				attribute_state = new StateBag();
				if (IsTrackingViewState)
				{
					attribute_state.TrackViewState();
				}
			}
			attribute_state.LoadViewState(pair.Second);
			attributes = new AttributeCollection(attribute_state);
		}
		enabled = ViewState.GetBool("Enabled", enabled);
	}

	internal virtual string InlinePropertiesSet()
	{
		List<string> list = new List<string>();
		if (BackColor != Color.Empty)
		{
			list.Add("BackColor");
		}
		if (BorderColor != Color.Empty)
		{
			list.Add("BorderColor");
		}
		if (BorderStyle != BorderStyle.NotSet)
		{
			list.Add("BorderStyle");
		}
		if (BorderWidth != Unit.Empty)
		{
			list.Add("BorderWidth");
		}
		if (CssClass != string.Empty)
		{
			list.Add("CssClass");
		}
		if (ForeColor != Color.Empty)
		{
			list.Add("ForeColor");
		}
		if (Height != Unit.Empty)
		{
			list.Add("Height");
		}
		if (Width != Unit.Empty)
		{
			list.Add("Width");
		}
		if (list.Count == 0)
		{
			return null;
		}
		return string.Join(", ", list);
	}

	internal void VerifyInlinePropertiesNotSet()
	{
		if (this is IRenderOuterTable { RenderOuterTable: false })
		{
			string text = InlinePropertiesSet();
			if (!string.IsNullOrEmpty(text))
			{
				bool flag = text.IndexOf(',') > -1;
				throw new InvalidOperationException(string.Format("The style propert{0} '{1}' cannot be used while RenderOuterTable is disabled on the {2} control with ID '{3}'", flag ? "ies" : "y", text, GetType().Name, ID));
			}
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (Adapter != null)
		{
			Adapter.Render(writer);
			return;
		}
		RenderBeginTag(writer);
		RenderContents(writer);
		RenderEndTag(writer);
	}

	protected internal virtual void RenderContents(HtmlTextWriter writer)
	{
		base.Render(writer);
	}

	protected override object SaveViewState()
	{
		if (track_enabled_state)
		{
			ViewState["Enabled"] = enabled;
		}
		object obj = null;
		if (style != null)
		{
			style.SaveBitState();
		}
		object obj2 = base.SaveViewState();
		if (attribute_state != null)
		{
			obj = attribute_state.SaveViewState();
		}
		if (obj2 == null && obj == null)
		{
			return null;
		}
		return new Pair(obj2, obj);
	}

	protected override void TrackViewState()
	{
		if (style != null)
		{
			style.TrackViewState();
		}
		if (attribute_state != null)
		{
			attribute_state.TrackViewState();
			attribute_state.SetDirty(dirty: true);
		}
		base.TrackViewState();
	}

	string IAttributeAccessor.GetAttribute(string key)
	{
		if (attributes != null)
		{
			return attributes[key];
		}
		return null;
	}

	void IAttributeAccessor.SetAttribute(string key, string value)
	{
		Attributes[key] = value;
	}
}
