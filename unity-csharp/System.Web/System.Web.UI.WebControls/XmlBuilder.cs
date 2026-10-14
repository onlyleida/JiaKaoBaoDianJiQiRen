using System.Collections;
using System.Web.Compilation;
using System.Xml;

namespace System.Web.UI.WebControls;

public class XmlBuilder : ControlBuilder
{
	public override void AppendLiteralString(string s)
	{
	}

	public override Type GetChildControlType(string tagName, IDictionary attribs)
	{
		return null;
	}

	public override bool NeedsTagInnerText()
	{
		return true;
	}

	public override void SetTagInnerText(string text)
	{
		string text2 = text.Trim();
		if (text2 == "")
		{
			return;
		}
		XmlDocument xmlDocument = new XmlDocument();
		try
		{
			xmlDocument.LoadXml(text);
		}
		catch (XmlException ex)
		{
			Location location = new Location(Location);
			if (ex.LineNumber >= 0)
			{
				location.BeginLine += ex.LineNumber - 1;
			}
			Location = location;
			throw;
		}
		base.AppendLiteralString(text2);
	}
}
