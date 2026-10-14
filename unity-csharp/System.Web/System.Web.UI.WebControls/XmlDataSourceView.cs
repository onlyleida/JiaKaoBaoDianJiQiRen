using System.Collections;
using System.Xml;

namespace System.Web.UI.WebControls;

public sealed class XmlDataSourceView : DataSourceView
{
	private ArrayList nodes;

	private XmlDataSource owner;

	public XmlDataSourceView(XmlDataSource owner, string name)
		: base(owner, name)
	{
		this.owner = owner;
	}

	public IEnumerable Select(DataSourceSelectArguments arguments)
	{
		return ExecuteSelect(arguments);
	}

	private void DoXPathSelect()
	{
		XmlNodeList xmlNodeList = owner.GetXmlDocument().SelectNodes((owner.XPath != "") ? owner.XPath : "/*/*");
		nodes = new ArrayList(xmlNodeList.Count);
		foreach (XmlNode item in xmlNodeList)
		{
			if (item.NodeType == XmlNodeType.Element)
			{
				nodes.Add(item);
			}
		}
	}

	protected internal override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
	{
		if (nodes == null)
		{
			DoXPathSelect();
		}
		ArrayList arrayList = new ArrayList();
		int num = arguments.StartRowIndex + ((arguments.MaximumRows > 0) ? arguments.MaximumRows : nodes.Count);
		if (num > nodes.Count)
		{
			num = nodes.Count;
		}
		for (int i = arguments.StartRowIndex; i < num; i++)
		{
			arrayList.Add(new XmlDataSourceNodeDescriptor((XmlElement)nodes[i]));
		}
		if (arguments.RetrieveTotalRowCount)
		{
			arguments.TotalRowCount = nodes.Count;
		}
		return arrayList;
	}
}
