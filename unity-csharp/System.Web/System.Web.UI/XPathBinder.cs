using System.Collections;
using System.Xml;
using System.Xml.XPath;

namespace System.Web.UI;

public sealed class XPathBinder
{
	private XPathBinder()
	{
	}

	public static object Eval(object container, string xPath)
	{
		return Eval(container, xPath, (IXmlNamespaceResolver)null);
	}

	public static object Eval(object container, string xPath, IXmlNamespaceResolver resolver)
	{
		if (xPath == null || xPath.Length == 0)
		{
			throw new ArgumentNullException("xPath");
		}
		object obj = ((container as IXPathNavigable) ?? throw new ArgumentException("container")).CreateNavigator().Evaluate(xPath, resolver);
		if (obj is XPathNodeIterator xPathNodeIterator)
		{
			if (xPathNodeIterator.MoveNext())
			{
				return xPathNodeIterator.Current.Value;
			}
			return null;
		}
		return obj;
	}

	public static string Eval(object container, string xPath, string format)
	{
		return Eval(container, xPath, format, null);
	}

	public static string Eval(object container, string xPath, string format, IXmlNamespaceResolver resolver)
	{
		object obj = Eval(container, xPath, resolver);
		if (obj == null)
		{
			return string.Empty;
		}
		if (format == null || format.Length == 0)
		{
			return obj.ToString();
		}
		return string.Format(format, obj);
	}

	public static IEnumerable Select(object container, string xPath)
	{
		return Select(container, xPath, null);
	}

	public static IEnumerable Select(object container, string xPath, IXmlNamespaceResolver resolver)
	{
		if (xPath == null || xPath.Length == 0)
		{
			throw new ArgumentNullException("xPath");
		}
		XPathNodeIterator xPathNodeIterator = ((container as IXPathNavigable) ?? throw new ArgumentException("container")).CreateNavigator().Select(xPath, resolver);
		ArrayList arrayList = new ArrayList();
		while (xPathNodeIterator.MoveNext())
		{
			if (!(xPathNodeIterator.Current is IHasXmlNode hasXmlNode))
			{
				throw new InvalidOperationException();
			}
			arrayList.Add(hasXmlNode.GetNode());
		}
		return arrayList;
	}
}
