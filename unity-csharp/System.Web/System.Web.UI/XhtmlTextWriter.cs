using System.Collections;
using System.IO;

namespace System.Web.UI;

public class XhtmlTextWriter : HtmlTextWriter
{
	private static Hashtable default_common_attrs;

	private static Hashtable default_suppress_common_attrs;

	private static Hashtable default_element_specific_attrs;

	private Hashtable common_attrs;

	private Hashtable suppress_common_attrs;

	private Hashtable element_specific_attrs;

	private static string[] DefaultCommonAttributes;

	private static string[] DefaultSuppressCommonAttributes;

	protected Hashtable CommonAttributes
	{
		get
		{
			if (common_attrs == null)
			{
				common_attrs = (Hashtable)default_common_attrs.Clone();
			}
			return common_attrs;
		}
	}

	protected Hashtable ElementSpecificAttributes
	{
		get
		{
			if (element_specific_attrs == null)
			{
				element_specific_attrs = (Hashtable)default_element_specific_attrs.Clone();
			}
			return element_specific_attrs;
		}
	}

	protected Hashtable SuppressCommonAttributes
	{
		get
		{
			if (suppress_common_attrs == null)
			{
				suppress_common_attrs = (Hashtable)default_suppress_common_attrs.Clone();
			}
			return suppress_common_attrs;
		}
	}

	static XhtmlTextWriter()
	{
		DefaultCommonAttributes = new string[4] { "class", "id", "title", "xml:lang" };
		DefaultSuppressCommonAttributes = new string[7] { "base", "meta", "br", "head", "title", "html", "style" };
		default_common_attrs = new Hashtable(DefaultCommonAttributes.Length);
		SetupHash(default_common_attrs, DefaultCommonAttributes);
		default_suppress_common_attrs = new Hashtable(DefaultSuppressCommonAttributes.Length);
		SetupHash(default_suppress_common_attrs, DefaultSuppressCommonAttributes);
		SetupElementsSpecificAttributes();
	}

	private static void SetupHash(Hashtable hash, string[] values)
	{
		foreach (string key in values)
		{
			hash.Add(key, true);
		}
	}

	private static void SetupElementsSpecificAttributes()
	{
		default_element_specific_attrs = new Hashtable();
		string[] attributesNames = new string[9] { "accesskey", "href", "charset", "hreflang", "rel", "type", "rev", "title", "tabindex" };
		SetupElementSpecificAttributes("a", attributesNames);
		string[] attributesNames2 = new string[1] { "href" };
		SetupElementSpecificAttributes("base", attributesNames2);
		string[] attributesNames3 = new string[1] { "cite" };
		SetupElementSpecificAttributes("blockquote", attributesNames3);
		string[] attributesNames4 = new string[3] { "id", "class", "title" };
		SetupElementSpecificAttributes("br", attributesNames4);
		string[] attributesNames5 = new string[3] { "action", "method", "enctype" };
		SetupElementSpecificAttributes("form", attributesNames5);
		string[] attributesNames6 = new string[1] { "xml:lang" };
		SetupElementSpecificAttributes("head", attributesNames6);
		string[] attributesNames7 = new string[3] { "version", "xml:lang", "xmlns" };
		SetupElementSpecificAttributes("html", attributesNames7);
		string[] attributesNames8 = new string[5] { "src", "alt", "width", "longdesc", "height" };
		SetupElementSpecificAttributes("img", attributesNames8);
		string[] attributesNames9 = new string[11]
		{
			"size", "accesskey", "title", "name", "type", "disabled", "value", "src", "checked", "maxlength",
			"tabindex"
		};
		SetupElementSpecificAttributes("input", attributesNames9);
		string[] attributesNames10 = new string[2] { "accesskey", "for" };
		SetupElementSpecificAttributes("label", attributesNames10);
		string[] attributesNames11 = new string[1] { "value" };
		SetupElementSpecificAttributes("li", attributesNames11);
		string[] attributesNames12 = new string[7] { "hreflang", "rev", "type", "charset", "rel", "href", "media" };
		SetupElementSpecificAttributes("link", attributesNames12);
		string[] attributesNames13 = new string[5] { "content", "name", "xml:lang", "http-equiv", "scheme" };
		SetupElementSpecificAttributes("meta", attributesNames13);
		string[] attributesNames14 = new string[12]
		{
			"codebase", "classid", "data", "standby", "name", "type", "height", "archive", "declare", "width",
			"tabindex", "codetype"
		};
		SetupElementSpecificAttributes("object", attributesNames14);
		string[] attributesNames15 = new string[1] { "start" };
		SetupElementSpecificAttributes("ol", attributesNames15);
		string[] attributesNames16 = new string[2] { "label", "disabled" };
		SetupElementSpecificAttributes("optgroup", attributesNames16);
		string[] attributesNames17 = new string[2] { "selected", "value" };
		SetupElementSpecificAttributes("option", attributesNames17);
		string[] attributesNames18 = new string[5] { "id", "name", "valuetype", "value", "type" };
		SetupElementSpecificAttributes("param", attributesNames18);
		string[] attributesNames19 = new string[1] { "xml:space" };
		SetupElementSpecificAttributes("pre", attributesNames19);
		string[] attributesNames20 = new string[1] { "cite" };
		SetupElementSpecificAttributes("q", attributesNames20);
		string[] attributesNames21 = new string[5] { "name", "tabindex", "disabled", "multiple", "size" };
		SetupElementSpecificAttributes("select", attributesNames21);
		string[] attributesNames22 = new string[5] { "xml:lang", "xml:space", "type", "title", "media" };
		SetupElementSpecificAttributes("style", attributesNames22);
		string[] attributesNames23 = new string[2] { "width", "summary" };
		SetupElementSpecificAttributes("table", attributesNames23);
		string[] attributesNames24 = new string[5] { "name", "cols", "accesskey", "tabindex", "rows" };
		SetupElementSpecificAttributes("textarea", attributesNames24);
		string[] attributesNames25 = new string[8] { "headers", "align", "rowspan", "colspan", "axis", "scope", "abbr", "valign" };
		SetupElementSpecificAttributes("td", attributesNames25);
		SetupElementSpecificAttributes("th", attributesNames25);
		string[] attributesNames26 = new string[1] { "xml:lang" };
		SetupElementSpecificAttributes("title", attributesNames26);
		string[] attributesNames27 = new string[2] { "align", "valign" };
		SetupElementSpecificAttributes("tr", attributesNames27);
	}

	private static void SetupElementSpecificAttributes(string elementName, string[] attributesNames)
	{
		Hashtable hashtable = new Hashtable(attributesNames.Length);
		SetupHash(hashtable, attributesNames);
		default_element_specific_attrs.Add(elementName, hashtable);
	}

	public XhtmlTextWriter(TextWriter writer)
		: this(writer, "\t")
	{
	}

	public XhtmlTextWriter(TextWriter writer, string tabString)
		: base(writer, tabString)
	{
	}

	public virtual void AddRecognizedAttribute(string elementName, string attributeName)
	{
		Hashtable hashtable = (Hashtable)ElementSpecificAttributes[elementName];
		if (hashtable == null)
		{
			Hashtable hashtable2 = new Hashtable();
			hashtable2.Add(attributeName, true);
			ElementSpecificAttributes.Add(elementName, hashtable2);
		}
		else
		{
			hashtable.Add(attributeName, true);
		}
	}

	public override bool IsValidFormAttribute(string attributeName)
	{
		if (!(attributeName == "action") && !(attributeName == "method"))
		{
			return attributeName == "enctype";
		}
		return true;
	}

	public virtual void RemoveRecognizedAttribute(string elementName, string attributeName)
	{
		((Hashtable)ElementSpecificAttributes[elementName])?.Remove(attributeName);
	}

	public virtual void SetDocType(XhtmlMobileDocType docType)
	{
	}

	public override void WriteBreak()
	{
		string tagName = GetTagName(HtmlTextWriterTag.Br);
		WriteBeginTag(tagName);
		Write('/');
		Write('>');
	}

	protected override bool OnAttributeRender(string name, string value, HtmlTextWriterAttribute key)
	{
		throw new ArgumentNullException();
	}

	protected override bool OnStyleAttributeRender(string name, string value, HtmlTextWriterStyle key)
	{
		return false;
	}
}
