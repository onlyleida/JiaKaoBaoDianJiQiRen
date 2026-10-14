using System.Xml.XPath;

namespace MS.Internal.Xml.XPath;

internal class ChildrenQuery : BaseAxisQuery
{
	private XPathNodeIterator iterator = XPathEmptyIterator.Instance;

	public ChildrenQuery(Query qyInput, string name, string prefix, XPathNodeType type)
		: base(qyInput, name, prefix, type)
	{
	}

	protected ChildrenQuery(ChildrenQuery other)
		: base(other)
	{
		iterator = Query.Clone(other.iterator);
	}

	public override void Reset()
	{
		iterator = XPathEmptyIterator.Instance;
		base.Reset();
	}

	public override XPathNavigator Advance()
	{
		while (!iterator.MoveNext())
		{
			XPathNavigator xPathNavigator = qyInput.Advance();
			if (xPathNavigator == null)
			{
				return null;
			}
			if (NameTest)
			{
				if (TypeTest == XPathNodeType.ProcessingInstruction)
				{
					iterator = new IteratorFilter(xPathNavigator.SelectChildren(TypeTest), Name);
				}
				else
				{
					iterator = xPathNavigator.SelectChildren(Name, Namespace);
				}
			}
			else
			{
				iterator = xPathNavigator.SelectChildren(TypeTest);
			}
			position = 0;
		}
		position++;
		currentNode = iterator.Current;
		return currentNode;
	}

	public sealed override XPathNavigator MatchNode(XPathNavigator context)
	{
		if (context != null && matches(context))
		{
			XPathNavigator xPathNavigator = context.Clone();
			if (xPathNavigator.NodeType != XPathNodeType.Attribute && xPathNavigator.MoveToParent())
			{
				return qyInput.MatchNode(xPathNavigator);
			}
			return null;
		}
		return null;
	}

	public override XPathNodeIterator Clone()
	{
		return new ChildrenQuery(this);
	}
}
