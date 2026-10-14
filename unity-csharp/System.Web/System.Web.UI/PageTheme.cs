using System.Collections;
using System.ComponentModel;
using System.Xml;

namespace System.Web.UI;

[EditorBrowsable(EditorBrowsableState.Advanced)]
public abstract class PageTheme
{
	private Page _page;

	protected abstract string AppRelativeTemplateSourceDirectory { get; }

	protected abstract IDictionary ControlSkins { get; }

	protected abstract string[] LinkedStyleSheets { get; }

	protected Page Page => _page;

	public static object CreateSkinKey(Type controlType, string skinID)
	{
		return skinID + ":" + controlType;
	}

	protected object Eval(string expression)
	{
		return Page.Eval(expression);
	}

	protected string Eval(string expression, string format)
	{
		return Page.Eval(expression, format);
	}

	[MonoTODO("Not implemented")]
	public bool TestDeviceFilter(string deviceFilterName)
	{
		throw new NotImplementedException();
	}

	protected object XPath(string xPathExpression)
	{
		return Page.XPath(xPathExpression);
	}

	protected object XPath(string xPathExpression, IXmlNamespaceResolver resolver)
	{
		return Page.XPath(xPathExpression, resolver);
	}

	protected string XPath(string xPathExpression, string format)
	{
		return Page.XPath(xPathExpression, format);
	}

	protected string XPath(string xPathExpression, string format, IXmlNamespaceResolver resolver)
	{
		return Page.XPath(xPathExpression, format, resolver);
	}

	protected IEnumerable XPathSelect(string xPathExpression)
	{
		return Page.XPathSelect(xPathExpression);
	}

	protected IEnumerable XPathSelect(string xPathExpression, IXmlNamespaceResolver resolver)
	{
		return Page.XPathSelect(xPathExpression, resolver);
	}

	internal void SetPage(Page page)
	{
		_page = page;
	}

	internal ControlSkin GetControlSkin(Type controlType, string skinID)
	{
		object key = CreateSkinKey(controlType, skinID);
		return ControlSkins[key] as ControlSkin;
	}

	internal string[] GetStyleSheets()
	{
		return LinkedStyleSheets;
	}
}
