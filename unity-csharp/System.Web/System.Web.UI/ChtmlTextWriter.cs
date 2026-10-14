using System.Collections;
using System.IO;

namespace System.Web.UI;

public class ChtmlTextWriter : Html32TextWriter
{
	private static Hashtable global_suppressed_attrs;

	private static string[] global_suppressed_attributes;

	private static string[] recognized_attributes;

	private Hashtable recognized_attrs = new Hashtable(recognized_attributes.Length);

	private Hashtable suppressed_attrs = new Hashtable(recognized_attributes.Length);

	private Hashtable attr_render = new Hashtable();

	protected Hashtable GlobalSuppressedAttributes => global_suppressed_attrs;

	protected Hashtable RecognizedAttributes => recognized_attrs;

	protected Hashtable SuppressedAttributes => suppressed_attrs;

	static ChtmlTextWriter()
	{
		global_suppressed_attributes = new string[10] { "onclick", "ondblclick", "onmousedown", "onmouseup", "onmouseover", "onmousemove", "onmouseout", "onkeypress", "onkeydown", "onkeyup" };
		recognized_attributes = new string[2] { "div", "span" };
		SetupGlobalSuppressedAttrs(global_suppressed_attributes);
	}

	private static void SetupGlobalSuppressedAttrs(string[] attrs)
	{
		global_suppressed_attrs = new Hashtable();
		PopulateHash(global_suppressed_attrs, global_suppressed_attributes);
	}

	private static void PopulateHash(Hashtable hash, string[] keys)
	{
		foreach (string key in keys)
		{
			hash.Add(key, true);
		}
	}

	public ChtmlTextWriter(TextWriter writer)
		: this(writer, "\t")
	{
	}

	public ChtmlTextWriter(TextWriter writer, string tabString)
		: base(writer, tabString)
	{
		string[] array = recognized_attributes;
		foreach (string key in array)
		{
			recognized_attrs.Add(key, new Hashtable());
		}
		SetupSuppressedAttrs();
	}

	private void SetupSuppressedAttrs()
	{
		string[] array = new string[5] { "accesskey", "cellspacing", "cellpadding", "gridlines", "rules" };
		string[] array2 = new string[4] { "cellspacing", "cellpadding", "gridlines", "rules" };
		Init("div", array, suppressed_attrs);
		Init("span", array2, suppressed_attrs);
	}

	private static void Init(string key, string[] attrs, Hashtable container)
	{
		Hashtable hashtable = new Hashtable(attrs.Length);
		PopulateHash(hashtable, attrs);
		container.Add(key, hashtable);
	}

	public virtual void AddRecognizedAttribute(string elementName, string attributeName)
	{
		Hashtable hashtable = (Hashtable)recognized_attrs[elementName];
		if (hashtable == null)
		{
			hashtable = new Hashtable();
			hashtable.Add(attributeName, true);
			recognized_attrs.Add(elementName, hashtable);
		}
		else
		{
			hashtable.Add(attributeName, true);
		}
	}

	public virtual void RemoveRecognizedAttribute(string elementName, string attributeName)
	{
		((Hashtable)recognized_attrs[elementName])?.Remove(attributeName);
	}

	public override void WriteBreak()
	{
		string tagName = GetTagName(HtmlTextWriterTag.Br);
		WriteBeginTag(tagName);
		Write('>');
	}

	public override void WriteEncodedText(string text)
	{
		base.WriteEncodedText(text);
	}

	protected override bool OnAttributeRender(string name, string value, HtmlTextWriterAttribute key)
	{
		return (bool)attr_render[null];
	}

	protected override bool OnStyleAttributeRender(string name, string value, HtmlTextWriterStyle key)
	{
		return key == HtmlTextWriterStyle.Display;
	}

	protected override bool OnTagRender(string name, HtmlTextWriterTag key)
	{
		return key != HtmlTextWriterTag.Span;
	}
}
