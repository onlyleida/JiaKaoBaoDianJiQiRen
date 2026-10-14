using System.Xml;
using System.Xml.XPath;

namespace MS.Internal.Xml.XPath;

internal abstract class DescendantBaseQuery : BaseAxisQuery
{
	protected bool matchSelf;

	protected bool abbrAxis;

	public DescendantBaseQuery(Query qyParent, string Name, string Prefix, XPathNodeType Type, bool matchSelf, bool abbrAxis)
		: base(qyParent, Name, Prefix, Type)
	{
		this.matchSelf = matchSelf;
		this.abbrAxis = abbrAxis;
	}

	public DescendantBaseQuery(DescendantBaseQuery other)
		: base(other)
	{
		matchSelf = other.matchSelf;
		abbrAxis = other.abbrAxis;
	}

	public override XPathNavigator MatchNode(XPathNavigator context)
	{
		if (context != null)
		{
			if (!abbrAxis)
			{
				throw XPathException.Create("'{0}' is an invalid XSLT pattern.");
			}
			XPathNavigator xPathNavigator = null;
			if (matches(context))
			{
				if (matchSelf && (xPathNavigator = qyInput.MatchNode(context)) != null)
				{
					return xPathNavigator;
				}
				XPathNavigator xPathNavigator2 = context.Clone();
				while (xPathNavigator2.MoveToParent())
				{
					if ((xPathNavigator = qyInput.MatchNode(xPathNavigator2)) != null)
					{
						return xPathNavigator;
					}
				}
			}
		}
		return null;
	}

	public override void PrintQuery(XmlWriter w)
	{
		w.WriteStartElement(GetType().Name);
		if (matchSelf)
		{
			w.WriteAttributeString("self", "yes");
		}
		if (NameTest)
		{
			w.WriteAttributeString("name", (Prefix.Length != 0) ? (Prefix + ":" + Name) : Name);
		}
		if (TypeTest != XPathNodeType.Element)
		{
			w.WriteAttributeString("nodeType", TypeTest.ToString());
		}
		qyInput.PrintQuery(w);
		w.WriteEndElement();
	}
}
