using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ToolboxItem("")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Style : Component, IStateManager
{
	[Flags]
	internal enum Styles
	{
		BackColor = 8,
		BorderColor = 0x10,
		BorderStyle = 0x40,
		BorderWidth = 0x20,
		CssClass = 2,
		Font = 1,
		ForeColor = 4,
		Height = 0x80,
		Width = 0x100,
		FontAll = 0xFE00,
		FontBold = 0x800,
		FontItalic = 0x1000,
		FontNames = 0x200,
		FontOverline = 0x4000,
		FontSize = 0x400,
		FontStrikeout = 0x8000,
		FontUnderline = 0x2000
	}

	internal const string BitStateKey = "_!SB";

	private int styles;

	private int stylesTraked;

	internal StateBag viewstate;

	private FontInfo fontinfo;

	private bool tracking;

	private bool _isSharedViewState;

	private string registered_class;

	[DefaultValue(typeof(Color), "")]
	[WebSysDescription("")]
	[TypeConverter(typeof(WebColorConverter))]
	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	public Color BackColor
	{
		get
		{
			if (!CheckBit(8))
			{
				return Color.Empty;
			}
			return (Color)viewstate["BackColor"];
		}
		set
		{
			viewstate["BackColor"] = value;
			SetBit(8);
		}
	}

	[DefaultValue(typeof(Color), "")]
	[NotifyParentProperty(true)]
	[TypeConverter(typeof(WebColorConverter))]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public Color BorderColor
	{
		get
		{
			if (!CheckBit(16))
			{
				return Color.Empty;
			}
			return (Color)viewstate["BorderColor"];
		}
		set
		{
			viewstate["BorderColor"] = value;
			SetBit(16);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DefaultValue(BorderStyle.NotSet)]
	[NotifyParentProperty(true)]
	public BorderStyle BorderStyle
	{
		get
		{
			if (!CheckBit(64))
			{
				return BorderStyle.NotSet;
			}
			return (BorderStyle)viewstate["BorderStyle"];
		}
		set
		{
			if (value < BorderStyle.NotSet || value > BorderStyle.Outset)
			{
				throw new ArgumentOutOfRangeException("value", "The selected value is not one of the BorderStyle enumeration values.");
			}
			viewstate["BorderStyle"] = value;
			SetBit(64);
		}
	}

	[DefaultValue(typeof(Unit), "")]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public Unit BorderWidth
	{
		get
		{
			if (!CheckBit(32))
			{
				return Unit.Empty;
			}
			return (Unit)viewstate["BorderWidth"];
		}
		set
		{
			if (value.Value < 0.0)
			{
				throw new ArgumentOutOfRangeException("Value", value.Value, "BorderWidth must not be negative");
			}
			viewstate["BorderWidth"] = value;
			SetBit(32);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	[DefaultValue("")]
	[CssClassProperty]
	public string CssClass
	{
		get
		{
			if (!CheckBit(2))
			{
				return string.Empty;
			}
			if (!(viewstate["CssClass"] is string result))
			{
				return string.Empty;
			}
			return result;
		}
		set
		{
			viewstate["CssClass"] = value;
			SetBit(2);
		}
	}

	[NotifyParentProperty(true)]
	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public FontInfo Font
	{
		get
		{
			if (fontinfo == null)
			{
				fontinfo = new FontInfo(this);
			}
			return fontinfo;
		}
	}

	[WebSysDescription("")]
	[TypeConverter(typeof(WebColorConverter))]
	[NotifyParentProperty(true)]
	[DefaultValue(typeof(Color), "")]
	[WebCategory("Appearance")]
	public Color ForeColor
	{
		get
		{
			if (!CheckBit(4))
			{
				return Color.Empty;
			}
			return (Color)viewstate["ForeColor"];
		}
		set
		{
			viewstate["ForeColor"] = value;
			SetBit(4);
		}
	}

	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[DefaultValue(typeof(Unit), "")]
	[WebCategory("Appearance")]
	public Unit Height
	{
		get
		{
			if (!CheckBit(128))
			{
				return Unit.Empty;
			}
			return (Unit)viewstate["Height"];
		}
		set
		{
			if (value.Value < 0.0)
			{
				throw new ArgumentOutOfRangeException("Value", value.Value, "Height must not be negative");
			}
			viewstate["Height"] = value;
			SetBit(128);
		}
	}

	[WebSysDescription("")]
	[DefaultValue(typeof(Unit), "")]
	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	public Unit Width
	{
		get
		{
			if (!CheckBit(256))
			{
				return Unit.Empty;
			}
			return (Unit)viewstate["Width"];
		}
		set
		{
			if (value.Value < 0.0)
			{
				throw new ArgumentOutOfRangeException("Value", value.Value, "Width must not be negative");
			}
			viewstate["Width"] = value;
			SetBit(256);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual bool IsEmpty
	{
		get
		{
			if (styles == 0)
			{
				return RegisteredCssClass.Length == 0;
			}
			return false;
		}
	}

	protected bool IsTrackingViewState => tracking;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected internal StateBag ViewState => viewstate;

	internal bool AlwaysRenderTextDecoration
	{
		get
		{
			if (viewstate["AlwaysRenderTextDecoration"] == null)
			{
				return false;
			}
			return (bool)viewstate["AlwaysRenderTextDecoration"];
		}
		set
		{
			viewstate["AlwaysRenderTextDecoration"] = value;
		}
	}

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public string RegisteredCssClass
	{
		get
		{
			if (registered_class == null)
			{
				registered_class = string.Empty;
			}
			return registered_class;
		}
	}

	public Style()
	{
		viewstate = new StateBag();
		GC.SuppressFinalize(this);
	}

	public Style(StateBag bag)
	{
		viewstate = bag;
		if (viewstate == null)
		{
			viewstate = new StateBag();
		}
		_isSharedViewState = true;
		GC.SuppressFinalize(this);
	}

	public void AddAttributesToRender(HtmlTextWriter writer)
	{
		AddAttributesToRender(writer, null);
	}

	public virtual void AddAttributesToRender(HtmlTextWriter writer, WebControl owner)
	{
		if (RegisteredCssClass.Length > 0)
		{
			string cssClass = CssClass;
			if (!string.IsNullOrEmpty(cssClass))
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Class, cssClass + " " + RegisteredCssClass);
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Class, RegisteredCssClass);
			}
			return;
		}
		string cssClass2 = CssClass;
		if (cssClass2 != null && cssClass2.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Class, cssClass2);
		}
		CssStyleCollection cssStyleCollection = new CssStyleCollection();
		FillStyleAttributes(cssStyleCollection, owner);
		foreach (string key in cssStyleCollection.Keys)
		{
			writer.AddStyleAttribute(key, cssStyleCollection[key]);
		}
	}

	protected virtual void FillStyleAttributes(CssStyleCollection attributes, IUrlResolutionService urlResolver)
	{
		if (CheckBit(8))
		{
			Color c = (Color)viewstate["BackColor"];
			if (!c.IsEmpty)
			{
				attributes.Add(HtmlTextWriterStyle.BackgroundColor, ColorTranslator.ToHtml(c));
			}
		}
		if (CheckBit(16))
		{
			Color c = (Color)viewstate["BorderColor"];
			if (!c.IsEmpty)
			{
				attributes.Add(HtmlTextWriterStyle.BorderColor, ColorTranslator.ToHtml(c));
			}
		}
		bool flag = false;
		if (CheckBit(32))
		{
			Unit unit = (Unit)viewstate["BorderWidth"];
			if (!unit.IsEmpty)
			{
				if (unit.Value > 0.0)
				{
					flag = true;
				}
				attributes.Add(HtmlTextWriterStyle.BorderWidth, unit.ToString());
			}
		}
		if (CheckBit(64))
		{
			BorderStyle borderStyle = (BorderStyle)viewstate["BorderStyle"];
			if (borderStyle != BorderStyle.NotSet)
			{
				attributes.Add(HtmlTextWriterStyle.BorderStyle, borderStyle.ToString());
			}
			else if (flag)
			{
				attributes.Add(HtmlTextWriterStyle.BorderStyle, "solid");
			}
		}
		else if (flag)
		{
			attributes.Add(HtmlTextWriterStyle.BorderStyle, "solid");
		}
		if (CheckBit(4))
		{
			Color c = (Color)viewstate["ForeColor"];
			if (!c.IsEmpty)
			{
				attributes.Add(HtmlTextWriterStyle.Color, ColorTranslator.ToHtml(c));
			}
		}
		if (CheckBit(128))
		{
			Unit unit = (Unit)viewstate["Height"];
			if (!unit.IsEmpty)
			{
				attributes.Add(HtmlTextWriterStyle.Height, unit.ToString());
			}
		}
		if (CheckBit(256))
		{
			Unit unit = (Unit)viewstate["Width"];
			if (!unit.IsEmpty)
			{
				attributes.Add(HtmlTextWriterStyle.Width, unit.ToString());
			}
		}
		Font.FillStyleAttributes(attributes, AlwaysRenderTextDecoration);
	}

	public virtual void CopyFrom(Style s)
	{
		if (s != null && !s.IsEmpty)
		{
			if (s.fontinfo != null)
			{
				Font.CopyFrom(s.fontinfo);
			}
			if (s.CheckBit(8) && s.BackColor != Color.Empty)
			{
				BackColor = s.BackColor;
			}
			if (s.CheckBit(16) && s.BorderColor != Color.Empty)
			{
				BorderColor = s.BorderColor;
			}
			if (s.CheckBit(64) && s.BorderStyle != BorderStyle.NotSet)
			{
				BorderStyle = s.BorderStyle;
			}
			if (s.CheckBit(32) && !s.BorderWidth.IsEmpty)
			{
				BorderWidth = s.BorderWidth;
			}
			if (s.CheckBit(2) && s.CssClass != string.Empty)
			{
				CssClass = s.CssClass;
			}
			if (s.CheckBit(4) && s.ForeColor != Color.Empty)
			{
				ForeColor = s.ForeColor;
			}
			if (s.CheckBit(128) && !s.Height.IsEmpty)
			{
				Height = s.Height;
			}
			if (s.CheckBit(256) && !s.Width.IsEmpty)
			{
				Width = s.Width;
			}
		}
	}

	public virtual void MergeWith(Style s)
	{
		if (s != null && !s.IsEmpty)
		{
			if (s.fontinfo != null)
			{
				Font.MergeWith(s.fontinfo);
			}
			if (!CheckBit(8) && s.CheckBit(8) && s.BackColor != Color.Empty)
			{
				BackColor = s.BackColor;
			}
			if (!CheckBit(16) && s.CheckBit(16) && s.BorderColor != Color.Empty)
			{
				BorderColor = s.BorderColor;
			}
			if (!CheckBit(64) && s.CheckBit(64) && s.BorderStyle != BorderStyle.NotSet)
			{
				BorderStyle = s.BorderStyle;
			}
			if (!CheckBit(32) && s.CheckBit(32) && !s.BorderWidth.IsEmpty)
			{
				BorderWidth = s.BorderWidth;
			}
			if (!CheckBit(2) && s.CheckBit(2) && s.CssClass != string.Empty)
			{
				CssClass = s.CssClass;
			}
			if (!CheckBit(4) && s.CheckBit(4) && s.ForeColor != Color.Empty)
			{
				ForeColor = s.ForeColor;
			}
			if (!CheckBit(128) && s.CheckBit(128) && !s.Height.IsEmpty)
			{
				Height = s.Height;
			}
			if (!CheckBit(256) && s.CheckBit(256) && !s.Width.IsEmpty)
			{
				Width = s.Width;
			}
		}
	}

	public virtual void Reset()
	{
		viewstate.Remove("BackColor");
		viewstate.Remove("BorderColor");
		viewstate.Remove("BorderStyle");
		viewstate.Remove("BorderWidth");
		viewstate.Remove("CssClass");
		viewstate.Remove("ForeColor");
		viewstate.Remove("Height");
		viewstate.Remove("Width");
		if (fontinfo != null)
		{
			fontinfo.Reset();
		}
		styles = 0;
		viewstate.Remove("_!SB");
		stylesTraked = 0;
	}

	protected internal void LoadViewState(object state)
	{
		viewstate.LoadViewState(state);
		LoadBitState();
	}

	protected internal virtual object SaveViewState()
	{
		SaveBitState();
		if (_isSharedViewState)
		{
			return null;
		}
		return viewstate.SaveViewState();
	}

	internal void SaveBitState()
	{
		if (stylesTraked != 0)
		{
			viewstate["_!SB"] = stylesTraked;
		}
	}

	internal void LoadBitState()
	{
		if (viewstate["_!SB"] != null)
		{
			int num = (int)viewstate["_!SB"];
			styles |= num;
			stylesTraked |= num;
		}
	}

	protected internal virtual void SetBit(int bit)
	{
		styles |= bit;
		if (tracking)
		{
			stylesTraked |= bit;
		}
	}

	internal void RemoveBit(int bit)
	{
		styles &= ~bit;
		if (tracking)
		{
			stylesTraked &= ~bit;
			if (stylesTraked == 0)
			{
				viewstate.Remove("_!SB");
			}
		}
	}

	internal bool CheckBit(int bit)
	{
		return (styles & bit) != 0;
	}

	protected internal virtual void TrackViewState()
	{
		tracking = true;
		viewstate.TrackViewState();
	}

	void IStateManager.LoadViewState(object state)
	{
		LoadViewState(state);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	internal void SetRegisteredCssClass(string name)
	{
		registered_class = name;
	}

	public CssStyleCollection GetStyleAttributes(IUrlResolutionService urlResolver)
	{
		CssStyleCollection cssStyleCollection = new CssStyleCollection();
		FillStyleAttributes(cssStyleCollection, urlResolver);
		return cssStyleCollection;
	}

	internal void CopyTextStylesFrom(Style source)
	{
		if (source.CheckBit(4))
		{
			ForeColor = source.ForeColor;
		}
		if (source.CheckBit(65024))
		{
			Font.CopyFrom(source.Font);
		}
	}

	internal void RemoveTextStyles()
	{
		ForeColor = Color.Empty;
		fontinfo = null;
	}

	internal void AddCssClass(string cssClass)
	{
		if (!string.IsNullOrEmpty(cssClass))
		{
			string text = CssClass;
			if (text.Length > 0)
			{
				text += " ";
			}
			text += cssClass;
			CssClass = text;
		}
	}

	internal void PrependCssClass(string cssClass)
	{
		if (!string.IsNullOrEmpty(cssClass))
		{
			string cssClass2 = CssClass;
			if (cssClass2.Length > 0)
			{
				cssClass += " ";
			}
			CssClass = cssClass + cssClass2;
		}
	}

	public void SetDirty()
	{
		if (viewstate != null)
		{
			viewstate.SetDirty(dirty: true);
		}
		stylesTraked = styles;
	}
}
