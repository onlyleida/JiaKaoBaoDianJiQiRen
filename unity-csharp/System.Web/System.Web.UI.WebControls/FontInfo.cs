using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[TypeConverter(typeof(ExpandableObjectConverter))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class FontInfo
{
	private static string[] empty_names = new string[0];

	private StateBag bag;

	private Style _owner;

	[WebSysDescription("")]
	[WebCategory("Font")]
	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	public bool Bold
	{
		get
		{
			if (!_owner.CheckBit(2048))
			{
				return false;
			}
			return bag.GetBool("Font_Bold", def: false);
		}
		set
		{
			bag["Font_Bold"] = value;
			_owner.SetBit(2048);
		}
	}

	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Font")]
	public bool Italic
	{
		get
		{
			if (!_owner.CheckBit(4096))
			{
				return false;
			}
			return bag.GetBool("Font_Italic", def: false);
		}
		set
		{
			bag["Font_Italic"] = value;
			_owner.SetBit(4096);
		}
	}

	[WebCategory("Font")]
	[TypeConverter(typeof(FontConverter.FontNameConverter))]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor("System.Drawing.Design.FontNameEditor, System.Drawing.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string Name
	{
		get
		{
			string[] names = Names;
			if (names.Length == 0)
			{
				return string.Empty;
			}
			return names[0];
		}
		set
		{
			if (value == string.Empty)
			{
				Names = null;
				return;
			}
			if (value == null)
			{
				throw new ArgumentNullException("value", "Font name cannot be null");
			}
			Names = new string[1] { value };
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor("System.Windows.Forms.Design.StringArrayEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[NotifyParentProperty(true)]
	[TypeConverter(typeof(FontNamesConverter))]
	[WebSysDescription("")]
	[WebCategory("Font")]
	public string[] Names
	{
		get
		{
			if (!_owner.CheckBit(512))
			{
				return empty_names;
			}
			string[] array = (string[])bag["Font_Names"];
			if (array != null)
			{
				return array;
			}
			return empty_names;
		}
		set
		{
			if (value == null)
			{
				bag.Remove("Font_Names");
				_owner.RemoveBit(512);
			}
			else
			{
				bag["Font_Names"] = value;
				_owner.SetBit(512);
			}
		}
	}

	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Font")]
	public bool Overline
	{
		get
		{
			if (!_owner.CheckBit(16384))
			{
				return false;
			}
			return bag.GetBool("Font_Overline", def: false);
		}
		set
		{
			bag["Font_Overline"] = value;
			_owner.SetBit(16384);
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(typeof(FontUnit), "")]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Font")]
	public FontUnit Size
	{
		get
		{
			if (!_owner.CheckBit(1024))
			{
				return FontUnit.Empty;
			}
			return (FontUnit)bag["Font_Size"];
		}
		set
		{
			if (value.Unit.Value < 0.0)
			{
				throw new ArgumentOutOfRangeException("Value", value.Unit.Value, "Font size cannot be negative");
			}
			bag["Font_Size"] = value;
			_owner.SetBit(1024);
		}
	}

	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	[WebSysDescription("")]
	[WebCategory("Font")]
	public bool Strikeout
	{
		get
		{
			if (!_owner.CheckBit(32768))
			{
				return false;
			}
			return bag.GetBool("Font_Strikeout", def: false);
		}
		set
		{
			bag["Font_Strikeout"] = value;
			_owner.SetBit(32768);
		}
	}

	[WebSysDescription("")]
	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	[WebCategory("Font")]
	public bool Underline
	{
		get
		{
			if (!_owner.CheckBit(8192))
			{
				return false;
			}
			return bag.GetBool("Font_Underline", def: false);
		}
		set
		{
			bag["Font_Underline"] = value;
			_owner.SetBit(8192);
		}
	}

	private bool IsEmpty => !_owner.CheckBit(65024);

	internal FontInfo(Style owner)
	{
		_owner = owner;
		bag = owner.ViewState;
	}

	public void CopyFrom(FontInfo f)
	{
		if (f != null && !f.IsEmpty && f != this)
		{
			if (f._owner.CheckBit(2048))
			{
				Bold = f.Bold;
			}
			if (f._owner.CheckBit(4096))
			{
				Italic = f.Italic;
			}
			Names = f.Names;
			if (f._owner.CheckBit(16384))
			{
				Overline = f.Overline;
			}
			if (f._owner.CheckBit(1024))
			{
				Size = f.Size;
			}
			if (f._owner.CheckBit(32768))
			{
				Strikeout = f.Strikeout;
			}
			if (f._owner.CheckBit(8192))
			{
				Underline = f.Underline;
			}
		}
	}

	public void MergeWith(FontInfo f)
	{
		if (!_owner.CheckBit(2048) && f._owner.CheckBit(2048))
		{
			Bold = f.Bold;
		}
		if (!_owner.CheckBit(4096) && f._owner.CheckBit(4096))
		{
			Italic = f.Italic;
		}
		if (!_owner.CheckBit(512) && f._owner.CheckBit(512))
		{
			Names = f.Names;
		}
		if (!_owner.CheckBit(16384) && f._owner.CheckBit(16384))
		{
			Overline = f.Overline;
		}
		if (!_owner.CheckBit(1024) && f._owner.CheckBit(1024))
		{
			Size = f.Size;
		}
		if (!_owner.CheckBit(32768) && f._owner.CheckBit(32768))
		{
			Strikeout = f.Strikeout;
		}
		if (!_owner.CheckBit(8192) && f._owner.CheckBit(8192))
		{
			Underline = f.Underline;
		}
	}

	public bool ShouldSerializeNames()
	{
		return Names.Length != 0;
	}

	public override string ToString()
	{
		if (Names.Length == 0)
		{
			return Size.ToString();
		}
		return Name + ", " + Size.ToString();
	}

	public void ClearDefaults()
	{
		Reset();
	}

	internal void Reset()
	{
		bag.Remove("Font_Bold");
		bag.Remove("Font_Italic");
		bag.Remove("Font_Names");
		bag.Remove("Font_Overline");
		bag.Remove("Font_Size");
		bag.Remove("Font_Strikeout");
		bag.Remove("Font_Underline");
		_owner.RemoveBit(65024);
	}

	internal void FillStyleAttributes(CssStyleCollection attributes, bool alwaysRenderTextDecoration)
	{
		if (IsEmpty)
		{
			if (alwaysRenderTextDecoration)
			{
				attributes.Add(HtmlTextWriterStyle.TextDecoration, "none");
			}
			return;
		}
		string text = string.Join(",", Names);
		if (text.Length > 0)
		{
			attributes.Add(HtmlTextWriterStyle.FontFamily, text);
		}
		if (_owner.CheckBit(2048))
		{
			attributes.Add(HtmlTextWriterStyle.FontWeight, Bold ? "bold" : "normal");
		}
		if (_owner.CheckBit(4096))
		{
			attributes.Add(HtmlTextWriterStyle.FontStyle, Italic ? "italic" : "normal");
		}
		if (!Size.IsEmpty)
		{
			attributes.Add(HtmlTextWriterStyle.FontSize, Size.ToString());
		}
		text = string.Empty;
		bool flag = false;
		if (_owner.CheckBit(16384))
		{
			if (Overline)
			{
				text += "overline ";
			}
			flag = true;
		}
		if (_owner.CheckBit(32768))
		{
			if (Strikeout)
			{
				text += "line-through ";
			}
			flag = true;
		}
		if (_owner.CheckBit(8192))
		{
			if (Underline)
			{
				text += "underline ";
			}
			flag = true;
		}
		if (text.Length > 0)
		{
			text = text.Trim();
		}
		else
		{
			text = ((alwaysRenderTextDecoration | flag) ? "none" : string.Empty);
		}
		if (text.Length > 0)
		{
			attributes.Add(HtmlTextWriterStyle.TextDecoration, text);
		}
	}

	internal FontInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
