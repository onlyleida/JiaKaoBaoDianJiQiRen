using System.Xml;
using Unity;

namespace System.Web.UI.WebControls;

public class XmlHierarchicalDataSourceView : HierarchicalDataSourceView
{
	private XmlNodeList nodeList;

	internal XmlHierarchicalDataSourceView(XmlNodeList nodeList)
	{
		this.nodeList = nodeList;
	}

	public override IHierarchicalEnumerable Select()
	{
		return new XmlHierarchicalEnumerable(nodeList);
	}

	internal XmlHierarchicalDataSourceView()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
