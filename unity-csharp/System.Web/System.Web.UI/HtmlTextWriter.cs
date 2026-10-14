using System.Collections;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.UI.WebControls;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlTextWriter : TextWriter
{
	private struct AddedTag
	{
		public string name;

		public HtmlTextWriterTag key;

		public bool ignore;
	}

	private struct AddedStyle
	{
		public string name;

		public HtmlTextWriterStyle key;

		public string value;
	}

	private struct AddedAttr
	{
		public string name;

		public HtmlTextWriterAttribute key;

		public string value;
	}

	private enum TagType
	{
		Block,
		Inline,
		SelfClosing
	}

	private sealed class HtmlTag
	{
		public readonly HtmlTextWriterTag key;

		public readonly string name;

		public readonly TagType tag_type;

		public HtmlTag(HtmlTextWriterTag k, string n, TagType tt)
		{
			key = k;
			name = n;
			tag_type = tt;
		}
	}

	private sealed class HtmlStyle
	{
		public readonly HtmlTextWriterStyle key;

		public readonly string name;

		public HtmlStyle(HtmlTextWriterStyle k, string n)
		{
			key = k;
			name = n;
		}
	}

	private sealed class HtmlAttribute
	{
		public readonly HtmlTextWriterAttribute key;

		public readonly string name;

		public HtmlAttribute(HtmlTextWriterAttribute k, string n)
		{
			key = k;
			name = n;
		}
	}

	private static readonly Hashtable _tagTable;

	private static readonly Hashtable _attributeTable;

	private static readonly Hashtable _styleTable;

	private int indent;

	private TextWriter b;

	private string tab_string;

	private bool newline;

	private AddedStyle[] styles;

	private AddedAttr[] attrs;

	private AddedTag[] tagstack;

	private int styles_pos = -1;

	private int attrs_pos = -1;

	private int tagstack_pos = -1;

	public const string DefaultTabString = "\t";

	public const char DoubleQuoteChar = '"';

	public const string EndTagLeftChars = "</";

	public const char EqualsChar = '=';

	public const string EqualsDoubleQuoteString = "=\"";

	public const string SelfClosingChars = " /";

	public const string SelfClosingTagEnd = " />";

	public const char SemicolonChar = ';';

	public const char SingleQuoteChar = '\'';

	public const char SlashChar = '/';

	public const char SpaceChar = ' ';

	public const char StyleEqualsChar = ':';

	public const char TagLeftChar = '<';

	public const char TagRightChar = '>';

	private static HtmlTag[] tags;

	private static HtmlAttribute[] htmlattrs;

	private static HtmlStyle[] htmlstyles;

	public override Encoding Encoding => b.Encoding;

	public int Indent
	{
		get
		{
			return indent;
		}
		set
		{
			indent = value;
		}
	}

	public TextWriter InnerWriter
	{
		get
		{
			return b;
		}
		set
		{
			b = value;
		}
	}

	public override string NewLine
	{
		get
		{
			return b.NewLine;
		}
		set
		{
			b.NewLine = value;
		}
	}

	protected HtmlTextWriterTag TagKey
	{
		get
		{
			if (tagstack_pos == -1)
			{
				throw new InvalidOperationException();
			}
			return tagstack[tagstack_pos].key;
		}
		set
		{
			tagstack[tagstack_pos].key = value;
			tagstack[tagstack_pos].name = GetTagName(value);
		}
	}

	protected string TagName
	{
		get
		{
			if (tagstack_pos == -1)
			{
				throw new InvalidOperationException();
			}
			return tagstack[tagstack_pos].name;
		}
		set
		{
			tagstack[tagstack_pos].name = value;
			tagstack[tagstack_pos].key = GetTagKey(value);
			if (tagstack[tagstack_pos].key != HtmlTextWriterTag.Unknown)
			{
				tagstack[tagstack_pos].name = GetTagName(tagstack[tagstack_pos].key);
			}
		}
	}

	private bool TagIgnore
	{
		get
		{
			if (tagstack_pos == -1)
			{
				throw new InvalidOperationException();
			}
			return tagstack[tagstack_pos].ignore;
		}
		set
		{
			if (tagstack_pos == -1)
			{
				throw new InvalidOperationException();
			}
			tagstack[tagstack_pos].ignore = value;
		}
	}

	static HtmlTextWriter()
	{
		tags = new HtmlTag[97]
		{
			new HtmlTag(HtmlTextWriterTag.Unknown, string.Empty, TagType.Block),
			new HtmlTag(HtmlTextWriterTag.A, "a", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Acronym, "acronym", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Address, "address", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Area, "area", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.B, "b", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Base, "base", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Basefont, "basefont", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Bdo, "bdo", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Bgsound, "bgsound", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Big, "big", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Blockquote, "blockquote", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Body, "body", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Br, "br", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Button, "button", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Caption, "caption", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Center, "center", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Cite, "cite", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Code, "code", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Col, "col", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Colgroup, "colgroup", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Dd, "dd", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Del, "del", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Dfn, "dfn", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Dir, "dir", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Div, "div", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Dl, "dl", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Dt, "dt", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Em, "em", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Embed, "embed", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Fieldset, "fieldset", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Font, "font", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Form, "form", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Frame, "frame", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Frameset, "frameset", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.H1, "h1", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.H2, "h2", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.H3, "h3", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.H4, "h4", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.H5, "h5", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.H6, "h6", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Head, "head", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Hr, "hr", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Html, "html", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.I, "i", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Iframe, "iframe", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Img, "img", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Input, "input", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Ins, "ins", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Isindex, "isindex", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Kbd, "kbd", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Label, "label", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Legend, "legend", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Li, "li", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Link, "link", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Map, "map", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Marquee, "marquee", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Menu, "menu", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Meta, "meta", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Nobr, "nobr", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Noframes, "noframes", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Noscript, "noscript", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Object, "object", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Ol, "ol", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Option, "option", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.P, "p", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Param, "param", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Pre, "pre", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Q, "q", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Rt, "rt", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Ruby, "ruby", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.S, "s", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Samp, "samp", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Script, "script", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Select, "select", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Small, "small", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Span, "span", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Strike, "strike", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Strong, "strong", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Style, "style", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Sub, "sub", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Sup, "sup", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Table, "table", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Tbody, "tbody", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Td, "td", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Textarea, "textarea", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Tfoot, "tfoot", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Th, "th", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Thead, "thead", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Title, "title", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Tr, "tr", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Tt, "tt", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.U, "u", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Ul, "ul", TagType.Block),
			new HtmlTag(HtmlTextWriterTag.Var, "var", TagType.Inline),
			new HtmlTag(HtmlTextWriterTag.Wbr, "wbr", TagType.SelfClosing),
			new HtmlTag(HtmlTextWriterTag.Xml, "xml", TagType.Block)
		};
		htmlattrs = new HtmlAttribute[54]
		{
			new HtmlAttribute(HtmlTextWriterAttribute.Accesskey, "accesskey"),
			new HtmlAttribute(HtmlTextWriterAttribute.Align, "align"),
			new HtmlAttribute(HtmlTextWriterAttribute.Alt, "alt"),
			new HtmlAttribute(HtmlTextWriterAttribute.Background, "background"),
			new HtmlAttribute(HtmlTextWriterAttribute.Bgcolor, "bgcolor"),
			new HtmlAttribute(HtmlTextWriterAttribute.Border, "border"),
			new HtmlAttribute(HtmlTextWriterAttribute.Bordercolor, "bordercolor"),
			new HtmlAttribute(HtmlTextWriterAttribute.Cellpadding, "cellpadding"),
			new HtmlAttribute(HtmlTextWriterAttribute.Cellspacing, "cellspacing"),
			new HtmlAttribute(HtmlTextWriterAttribute.Checked, "checked"),
			new HtmlAttribute(HtmlTextWriterAttribute.Class, "class"),
			new HtmlAttribute(HtmlTextWriterAttribute.Cols, "cols"),
			new HtmlAttribute(HtmlTextWriterAttribute.Colspan, "colspan"),
			new HtmlAttribute(HtmlTextWriterAttribute.Disabled, "disabled"),
			new HtmlAttribute(HtmlTextWriterAttribute.For, "for"),
			new HtmlAttribute(HtmlTextWriterAttribute.Height, "height"),
			new HtmlAttribute(HtmlTextWriterAttribute.Href, "href"),
			new HtmlAttribute(HtmlTextWriterAttribute.Id, "id"),
			new HtmlAttribute(HtmlTextWriterAttribute.Maxlength, "maxlength"),
			new HtmlAttribute(HtmlTextWriterAttribute.Multiple, "multiple"),
			new HtmlAttribute(HtmlTextWriterAttribute.Name, "name"),
			new HtmlAttribute(HtmlTextWriterAttribute.Nowrap, "nowrap"),
			new HtmlAttribute(HtmlTextWriterAttribute.Onchange, "onchange"),
			new HtmlAttribute(HtmlTextWriterAttribute.Onclick, "onclick"),
			new HtmlAttribute(HtmlTextWriterAttribute.ReadOnly, "readonly"),
			new HtmlAttribute(HtmlTextWriterAttribute.Rows, "rows"),
			new HtmlAttribute(HtmlTextWriterAttribute.Rowspan, "rowspan"),
			new HtmlAttribute(HtmlTextWriterAttribute.Rules, "rules"),
			new HtmlAttribute(HtmlTextWriterAttribute.Selected, "selected"),
			new HtmlAttribute(HtmlTextWriterAttribute.Size, "size"),
			new HtmlAttribute(HtmlTextWriterAttribute.Src, "src"),
			new HtmlAttribute(HtmlTextWriterAttribute.Style, "style"),
			new HtmlAttribute(HtmlTextWriterAttribute.Tabindex, "tabindex"),
			new HtmlAttribute(HtmlTextWriterAttribute.Target, "target"),
			new HtmlAttribute(HtmlTextWriterAttribute.Title, "title"),
			new HtmlAttribute(HtmlTextWriterAttribute.Type, "type"),
			new HtmlAttribute(HtmlTextWriterAttribute.Valign, "valign"),
			new HtmlAttribute(HtmlTextWriterAttribute.Value, "value"),
			new HtmlAttribute(HtmlTextWriterAttribute.Width, "width"),
			new HtmlAttribute(HtmlTextWriterAttribute.Wrap, "wrap"),
			new HtmlAttribute(HtmlTextWriterAttribute.Abbr, "abbr"),
			new HtmlAttribute(HtmlTextWriterAttribute.AutoComplete, "autocomplete"),
			new HtmlAttribute(HtmlTextWriterAttribute.Axis, "axis"),
			new HtmlAttribute(HtmlTextWriterAttribute.Content, "content"),
			new HtmlAttribute(HtmlTextWriterAttribute.Coords, "coords"),
			new HtmlAttribute(HtmlTextWriterAttribute.DesignerRegion, "_designerregion"),
			new HtmlAttribute(HtmlTextWriterAttribute.Dir, "dir"),
			new HtmlAttribute(HtmlTextWriterAttribute.Headers, "headers"),
			new HtmlAttribute(HtmlTextWriterAttribute.Longdesc, "longdesc"),
			new HtmlAttribute(HtmlTextWriterAttribute.Rel, "rel"),
			new HtmlAttribute(HtmlTextWriterAttribute.Scope, "scope"),
			new HtmlAttribute(HtmlTextWriterAttribute.Shape, "shape"),
			new HtmlAttribute(HtmlTextWriterAttribute.Usemap, "usemap"),
			new HtmlAttribute(HtmlTextWriterAttribute.VCardName, "vcard_name")
		};
		htmlstyles = new HtmlStyle[43]
		{
			new HtmlStyle(HtmlTextWriterStyle.BackgroundColor, "background-color"),
			new HtmlStyle(HtmlTextWriterStyle.BackgroundImage, "background-image"),
			new HtmlStyle(HtmlTextWriterStyle.BorderCollapse, "border-collapse"),
			new HtmlStyle(HtmlTextWriterStyle.BorderColor, "border-color"),
			new HtmlStyle(HtmlTextWriterStyle.BorderStyle, "border-style"),
			new HtmlStyle(HtmlTextWriterStyle.BorderWidth, "border-width"),
			new HtmlStyle(HtmlTextWriterStyle.Color, "color"),
			new HtmlStyle(HtmlTextWriterStyle.FontFamily, "font-family"),
			new HtmlStyle(HtmlTextWriterStyle.FontSize, "font-size"),
			new HtmlStyle(HtmlTextWriterStyle.FontStyle, "font-style"),
			new HtmlStyle(HtmlTextWriterStyle.FontWeight, "font-weight"),
			new HtmlStyle(HtmlTextWriterStyle.Height, "height"),
			new HtmlStyle(HtmlTextWriterStyle.TextDecoration, "text-decoration"),
			new HtmlStyle(HtmlTextWriterStyle.Width, "width"),
			new HtmlStyle(HtmlTextWriterStyle.ListStyleImage, "list-style-image"),
			new HtmlStyle(HtmlTextWriterStyle.ListStyleType, "list-style-type"),
			new HtmlStyle(HtmlTextWriterStyle.Cursor, "cursor"),
			new HtmlStyle(HtmlTextWriterStyle.Direction, "direction"),
			new HtmlStyle(HtmlTextWriterStyle.Display, "display"),
			new HtmlStyle(HtmlTextWriterStyle.Filter, "filter"),
			new HtmlStyle(HtmlTextWriterStyle.FontVariant, "font-variant"),
			new HtmlStyle(HtmlTextWriterStyle.Left, "left"),
			new HtmlStyle(HtmlTextWriterStyle.Margin, "margin"),
			new HtmlStyle(HtmlTextWriterStyle.MarginBottom, "margin-bottom"),
			new HtmlStyle(HtmlTextWriterStyle.MarginLeft, "margin-left"),
			new HtmlStyle(HtmlTextWriterStyle.MarginRight, "margin-right"),
			new HtmlStyle(HtmlTextWriterStyle.MarginTop, "margin-top"),
			new HtmlStyle(HtmlTextWriterStyle.Overflow, "overflow"),
			new HtmlStyle(HtmlTextWriterStyle.OverflowX, "overflow-x"),
			new HtmlStyle(HtmlTextWriterStyle.OverflowY, "overflow-y"),
			new HtmlStyle(HtmlTextWriterStyle.Padding, "padding"),
			new HtmlStyle(HtmlTextWriterStyle.PaddingBottom, "padding-bottom"),
			new HtmlStyle(HtmlTextWriterStyle.PaddingLeft, "padding-left"),
			new HtmlStyle(HtmlTextWriterStyle.PaddingRight, "padding-right"),
			new HtmlStyle(HtmlTextWriterStyle.PaddingTop, "padding-top"),
			new HtmlStyle(HtmlTextWriterStyle.Position, "position"),
			new HtmlStyle(HtmlTextWriterStyle.TextAlign, "text-align"),
			new HtmlStyle(HtmlTextWriterStyle.VerticalAlign, "vertical-align"),
			new HtmlStyle(HtmlTextWriterStyle.TextOverflow, "text-overflow"),
			new HtmlStyle(HtmlTextWriterStyle.Top, "top"),
			new HtmlStyle(HtmlTextWriterStyle.Visibility, "visibility"),
			new HtmlStyle(HtmlTextWriterStyle.WhiteSpace, "white-space"),
			new HtmlStyle(HtmlTextWriterStyle.ZIndex, "z-index")
		};
		_tagTable = new Hashtable(tags.Length, StringComparer.OrdinalIgnoreCase);
		_attributeTable = new Hashtable(htmlattrs.Length, StringComparer.OrdinalIgnoreCase);
		_styleTable = new Hashtable(htmlstyles.Length, StringComparer.OrdinalIgnoreCase);
		HtmlTag[] array = tags;
		foreach (HtmlTag htmlTag in array)
		{
			_tagTable.Add(htmlTag.name, htmlTag);
		}
		HtmlAttribute[] array2 = htmlattrs;
		foreach (HtmlAttribute htmlAttribute in array2)
		{
			_attributeTable.Add(htmlAttribute.name, htmlAttribute);
		}
		HtmlStyle[] array3 = htmlstyles;
		foreach (HtmlStyle htmlStyle in array3)
		{
			_styleTable.Add(htmlStyle.name, htmlStyle);
		}
	}

	public HtmlTextWriter(TextWriter writer)
		: this(writer, "\t")
	{
	}

	public HtmlTextWriter(TextWriter writer, string tabString)
	{
		b = writer;
		tab_string = tabString;
	}

	internal static string StaticGetStyleName(HtmlTextWriterStyle styleKey)
	{
		if ((int)styleKey < htmlstyles.Length)
		{
			return htmlstyles[(int)styleKey].name;
		}
		return null;
	}

	[MonoTODO("Does nothing")]
	protected static void RegisterAttribute(string name, HtmlTextWriterAttribute key)
	{
	}

	[MonoTODO("Does nothing")]
	protected static void RegisterStyle(string name, HtmlTextWriterStyle key)
	{
	}

	[MonoTODO("Does nothing")]
	protected static void RegisterTag(string name, HtmlTextWriterTag key)
	{
	}

	public virtual void AddAttribute(HtmlTextWriterAttribute key, string value, bool fEncode)
	{
		if (fEncode)
		{
			value = HttpUtility.HtmlAttributeEncode(value);
		}
		AddAttribute(GetAttributeName(key), value, key);
	}

	public virtual void AddAttribute(HtmlTextWriterAttribute key, string value)
	{
		if (key != HtmlTextWriterAttribute.Name && key != HtmlTextWriterAttribute.Id)
		{
			value = HttpUtility.HtmlAttributeEncode(value);
		}
		AddAttribute(GetAttributeName(key), value, key);
	}

	public virtual void AddAttribute(string name, string value, bool fEndode)
	{
		if (fEndode)
		{
			value = HttpUtility.HtmlAttributeEncode(value);
		}
		AddAttribute(name, value, GetAttributeKey(name));
	}

	public virtual void AddAttribute(string name, string value)
	{
		HtmlTextWriterAttribute attributeKey = GetAttributeKey(name);
		if (attributeKey != HtmlTextWriterAttribute.Name && attributeKey != HtmlTextWriterAttribute.Id)
		{
			value = HttpUtility.HtmlAttributeEncode(value);
		}
		AddAttribute(name, value, attributeKey);
	}

	protected virtual void AddAttribute(string name, string value, HtmlTextWriterAttribute key)
	{
		NextAttrStack();
		attrs[attrs_pos].name = name;
		attrs[attrs_pos].value = value;
		attrs[attrs_pos].key = key;
	}

	protected virtual void AddStyleAttribute(string name, string value, HtmlTextWriterStyle key)
	{
		NextStyleStack();
		styles[styles_pos].name = name;
		value = HttpUtility.HtmlAttributeEncode(value);
		styles[styles_pos].value = value;
		styles[styles_pos].key = key;
	}

	public virtual void AddStyleAttribute(string name, string value)
	{
		AddStyleAttribute(name, value, GetStyleKey(name));
	}

	public virtual void AddStyleAttribute(HtmlTextWriterStyle key, string value)
	{
		AddStyleAttribute(GetStyleName(key), value, key);
	}

	public override void Close()
	{
		b.Close();
	}

	protected virtual string EncodeAttributeValue(HtmlTextWriterAttribute attrKey, string value)
	{
		return HttpUtility.HtmlAttributeEncode(value);
	}

	protected string EncodeAttributeValue(string value, bool fEncode)
	{
		if (fEncode)
		{
			return HttpUtility.HtmlAttributeEncode(value);
		}
		return value;
	}

	protected string EncodeUrl(string url)
	{
		return HttpUtility.UrlPathEncode(url);
	}

	protected virtual void FilterAttributes()
	{
		AddedAttr addedAttr = default;
		for (int i = 0; i <= attrs_pos; i++)
		{
			AddedAttr addedAttr2 = attrs[i];
			if (OnAttributeRender(addedAttr2.name, addedAttr2.value, addedAttr2.key))
			{
				if (addedAttr2.key == HtmlTextWriterAttribute.Style)
				{
					addedAttr = addedAttr2;
				}
				else
				{
					WriteAttribute(addedAttr2.name, addedAttr2.value, fEncode: false);
				}
			}
		}
		if (styles_pos != -1 || addedAttr.value != null)
		{
			Write(' ');
			Write("style");
			Write("=\"");
			for (int j = 0; j <= styles_pos; j++)
			{
				AddedStyle addedStyle = styles[j];
				if (OnStyleAttributeRender(addedStyle.name, addedStyle.value, addedStyle.key))
				{
					if (addedStyle.key == HtmlTextWriterStyle.BackgroundImage)
					{
						addedStyle.value = "url(" + HttpUtility.UrlPathEncode(addedStyle.value) + ")";
					}
					WriteStyleAttribute(addedStyle.name, addedStyle.value, fEncode: false);
				}
			}
			Write(addedAttr.value);
			Write('"');
		}
		styles_pos = (attrs_pos = -1);
	}

	public override void Flush()
	{
		b.Flush();
	}

	protected HtmlTextWriterAttribute GetAttributeKey(string attrName)
	{
		object obj = _attributeTable[attrName];
		if (obj == null)
		{
			return (HtmlTextWriterAttribute)(-1);
		}
		return ((HtmlAttribute)obj).key;
	}

	protected string GetAttributeName(HtmlTextWriterAttribute attrKey)
	{
		if ((int)attrKey < htmlattrs.Length)
		{
			return htmlattrs[(int)attrKey].name;
		}
		return null;
	}

	protected HtmlTextWriterStyle GetStyleKey(string styleName)
	{
		object obj = _styleTable[styleName];
		if (obj == null)
		{
			return (HtmlTextWriterStyle)(-1);
		}
		return ((HtmlStyle)obj).key;
	}

	protected string GetStyleName(HtmlTextWriterStyle styleKey)
	{
		return StaticGetStyleName(styleKey);
	}

	protected virtual HtmlTextWriterTag GetTagKey(string tagName)
	{
		object obj = _tagTable[tagName];
		if (obj == null)
		{
			return HtmlTextWriterTag.Unknown;
		}
		return ((HtmlTag)obj).key;
	}

	internal static string StaticGetTagName(HtmlTextWriterTag tagKey)
	{
		if ((int)tagKey < tags.Length)
		{
			return tags[(int)tagKey].name;
		}
		return null;
	}

	protected virtual string GetTagName(HtmlTextWriterTag tagKey)
	{
		if ((int)tagKey < tags.Length)
		{
			return tags[(int)tagKey].name;
		}
		return null;
	}

	protected bool IsAttributeDefined(HtmlTextWriterAttribute key)
	{
		string value;
		return IsAttributeDefined(key, out value);
	}

	protected bool IsAttributeDefined(HtmlTextWriterAttribute key, out string value)
	{
		for (int i = 0; i <= attrs_pos; i++)
		{
			if (attrs[i].key == key)
			{
				value = attrs[i].value;
				return true;
			}
		}
		value = null;
		return false;
	}

	protected bool IsStyleAttributeDefined(HtmlTextWriterStyle key)
	{
		string value;
		return IsStyleAttributeDefined(key, out value);
	}

	protected bool IsStyleAttributeDefined(HtmlTextWriterStyle key, out string value)
	{
		for (int i = 0; i <= styles_pos; i++)
		{
			if (styles[i].key == key)
			{
				value = styles[i].value;
				return true;
			}
		}
		value = null;
		return false;
	}

	protected virtual bool OnAttributeRender(string name, string value, HtmlTextWriterAttribute key)
	{
		return true;
	}

	protected virtual bool OnStyleAttributeRender(string name, string value, HtmlTextWriterStyle key)
	{
		return true;
	}

	protected virtual bool OnTagRender(string name, HtmlTextWriterTag key)
	{
		return true;
	}

	protected virtual void OutputTabs()
	{
		if (newline)
		{
			newline = false;
			for (int i = 0; i < Indent; i++)
			{
				b.Write(tab_string);
			}
		}
	}

	protected string PopEndTag()
	{
		if (tagstack_pos == -1)
		{
			throw new InvalidOperationException();
		}
		string tagName = TagName;
		tagstack_pos--;
		return tagName;
	}

	protected void PushEndTag(string endTag)
	{
		NextTagStack();
		TagName = endTag;
	}

	private void PushEndTag(HtmlTextWriterTag t)
	{
		NextTagStack();
		TagKey = t;
	}

	protected virtual string RenderAfterContent()
	{
		return null;
	}

	protected virtual string RenderAfterTag()
	{
		return null;
	}

	protected virtual string RenderBeforeContent()
	{
		return null;
	}

	protected virtual string RenderBeforeTag()
	{
		return null;
	}

	public virtual void RenderBeginTag(string tagName)
	{
		bool tagIgnore = !OnTagRender(tagName, GetTagKey(tagName));
		PushEndTag(tagName);
		TagIgnore = tagIgnore;
		DoBeginTag();
	}

	public virtual void RenderBeginTag(HtmlTextWriterTag tagKey)
	{
		bool tagIgnore = !OnTagRender(GetTagName(tagKey), tagKey);
		PushEndTag(tagKey);
		DoBeginTag();
		TagIgnore = tagIgnore;
	}

	private void WriteIfNotNull(string s)
	{
		if (s != null)
		{
			Write(s);
		}
	}

	private void DoBeginTag()
	{
		WriteIfNotNull(RenderBeforeTag());
		if (!TagIgnore)
		{
			WriteBeginTag(TagName);
			FilterAttributes();
			HtmlTextWriterTag htmlTextWriterTag = (((int)TagKey < tags.Length) ? TagKey : HtmlTextWriterTag.Unknown);
			switch (tags[(int)htmlTextWriterTag].tag_type)
			{
			case TagType.Inline:
				Write('>');
				break;
			case TagType.Block:
				Write('>');
				WriteLine();
				Indent++;
				break;
			case TagType.SelfClosing:
				Write(" />");
				break;
			}
		}
		WriteIfNotNull(RenderBeforeContent());
	}

	public virtual void RenderEndTag()
	{
		WriteIfNotNull(RenderAfterContent());
		if (!TagIgnore)
		{
			HtmlTextWriterTag htmlTextWriterTag = (((int)TagKey < tags.Length) ? TagKey : HtmlTextWriterTag.Unknown);
			switch (tags[(int)htmlTextWriterTag].tag_type)
			{
			case TagType.Inline:
				WriteEndTag(TagName);
				break;
			case TagType.Block:
				Indent--;
				WriteLineNoTabs(string.Empty);
				WriteEndTag(TagName);
				break;
			}
		}
		WriteIfNotNull(RenderAfterTag());
		PopEndTag();
	}

	public virtual void WriteAttribute(string name, string value, bool fEncode)
	{
		Write(' ');
		Write(name);
		if (value != null)
		{
			Write("=\"");
			value = EncodeAttributeValue(value, fEncode);
			Write(value);
			Write('"');
		}
	}

	public virtual void WriteBeginTag(string tagName)
	{
		Write('<');
		Write(tagName);
	}

	public virtual void WriteEndTag(string tagName)
	{
		Write("</");
		Write(tagName);
		Write('>');
	}

	public virtual void WriteFullBeginTag(string tagName)
	{
		Write('<');
		Write(tagName);
		Write('>');
	}

	public virtual void WriteStyleAttribute(string name, string value)
	{
		WriteStyleAttribute(name, value, fEncode: false);
	}

	public virtual void WriteStyleAttribute(string name, string value, bool fEncode)
	{
		Write(name);
		Write(':');
		Write(EncodeAttributeValue(value, fEncode));
		Write(';');
	}

	public override void Write(char[] buffer, int index, int count)
	{
		OutputTabs();
		b.Write(buffer, index, count);
	}

	public override void Write(double value)
	{
		OutputTabs();
		b.Write(value);
	}

	public override void Write(char value)
	{
		OutputTabs();
		b.Write(value);
	}

	public override void Write(char[] buffer)
	{
		OutputTabs();
		b.Write(buffer);
	}

	public override void Write(int value)
	{
		OutputTabs();
		b.Write(value);
	}

	public override void Write(string format, object arg0)
	{
		OutputTabs();
		b.Write(format, arg0);
	}

	public override void Write(string format, object arg0, object arg1)
	{
		OutputTabs();
		b.Write(format, arg0, arg1);
	}

	public override void Write(string format, params object[] arg)
	{
		OutputTabs();
		b.Write(format, arg);
	}

	public override void Write(string s)
	{
		OutputTabs();
		b.Write(s);
	}

	public override void Write(long value)
	{
		OutputTabs();
		b.Write(value);
	}

	public override void Write(object value)
	{
		OutputTabs();
		b.Write(value);
	}

	public override void Write(float value)
	{
		OutputTabs();
		b.Write(value);
	}

	public override void Write(bool value)
	{
		OutputTabs();
		b.Write(value);
	}

	public virtual void WriteAttribute(string name, string value)
	{
		WriteAttribute(name, value, fEncode: false);
	}

	public override void WriteLine(char value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine(long value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine(object value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine(double value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine(char[] buffer, int index, int count)
	{
		OutputTabs();
		b.WriteLine(buffer, index, count);
		newline = true;
	}

	public override void WriteLine(char[] buffer)
	{
		OutputTabs();
		b.WriteLine(buffer);
		newline = true;
	}

	public override void WriteLine(bool value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine()
	{
		OutputTabs();
		b.WriteLine();
		newline = true;
	}

	public override void WriteLine(int value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine(string format, object arg0, object arg1)
	{
		OutputTabs();
		b.WriteLine(format, arg0, arg1);
		newline = true;
	}

	public override void WriteLine(string format, object arg0)
	{
		OutputTabs();
		b.WriteLine(format, arg0);
		newline = true;
	}

	public override void WriteLine(string format, params object[] arg)
	{
		OutputTabs();
		b.WriteLine(format, arg);
		newline = true;
	}

	[CLSCompliant(false)]
	public override void WriteLine(uint value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public override void WriteLine(string s)
	{
		OutputTabs();
		b.WriteLine(s);
		newline = true;
	}

	public override void WriteLine(float value)
	{
		OutputTabs();
		b.WriteLine(value);
		newline = true;
	}

	public void WriteLineNoTabs(string s)
	{
		b.WriteLine(s);
		newline = true;
	}

	internal HttpWriter GetHttpWriter()
	{
		return b as HttpWriter;
	}

	private void NextStyleStack()
	{
		if (styles == null)
		{
			styles = new AddedStyle[16];
		}
		if (++styles_pos >= styles.Length)
		{
			AddedStyle[] destinationArray = new AddedStyle[styles.Length * 2];
			Array.Copy(styles, destinationArray, styles.Length);
			styles = destinationArray;
		}
	}

	private void NextAttrStack()
	{
		if (attrs == null)
		{
			attrs = new AddedAttr[16];
		}
		if (++attrs_pos >= attrs.Length)
		{
			AddedAttr[] destinationArray = new AddedAttr[attrs.Length * 2];
			Array.Copy(attrs, destinationArray, attrs.Length);
			attrs = destinationArray;
		}
	}

	private void NextTagStack()
	{
		if (tagstack == null)
		{
			tagstack = new AddedTag[16];
		}
		if (++tagstack_pos >= tagstack.Length)
		{
			AddedTag[] destinationArray = new AddedTag[tagstack.Length * 2];
			Array.Copy(tagstack, destinationArray, tagstack.Length);
			tagstack = destinationArray;
		}
	}

	public virtual bool IsValidFormAttribute(string attribute)
	{
		return true;
	}

	public virtual void WriteBreak()
	{
		string tagName = GetTagName(HtmlTextWriterTag.Br);
		WriteBeginTag(tagName);
		Write(" />");
	}

	public virtual void WriteEncodedText(string text)
	{
		Write(HttpUtility.HtmlEncode(text));
	}

	[MonoNotSupported("")]
	public virtual void WriteEncodedUrl(string url)
	{
		throw new NotImplementedException();
	}

	[MonoNotSupported("")]
	public virtual void WriteEncodedUrlParameter(string urlText)
	{
		throw new NotImplementedException();
	}

	[MonoNotSupported("")]
	protected void WriteUrlEncodedString(string text, bool argument)
	{
		throw new NotImplementedException();
	}

	[MonoNotSupported("")]
	public virtual void EnterStyle(Style style)
	{
		throw new NotImplementedException();
	}

	[MonoNotSupported("")]
	public virtual void EnterStyle(Style style, HtmlTextWriterTag tag)
	{
		throw new NotImplementedException();
	}

	[MonoNotSupported("")]
	public virtual void ExitStyle(Style style)
	{
		throw new NotImplementedException();
	}

	[MonoNotSupported("")]
	public virtual void ExitStyle(Style style, HtmlTextWriterTag tag)
	{
		throw new NotImplementedException();
	}

	public virtual void BeginRender()
	{
	}

	public virtual void EndRender()
	{
	}
}
