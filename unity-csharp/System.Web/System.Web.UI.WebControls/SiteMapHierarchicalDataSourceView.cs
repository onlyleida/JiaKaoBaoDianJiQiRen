namespace System.Web.UI.WebControls;

public class SiteMapHierarchicalDataSourceView : HierarchicalDataSourceView
{
	private SiteMapNodeCollection collection;

	public SiteMapHierarchicalDataSourceView(SiteMapNode node)
		: this(new SiteMapNodeCollection(node))
	{
	}

	public SiteMapHierarchicalDataSourceView(SiteMapNodeCollection collection)
	{
		this.collection = collection;
	}

	public override IHierarchicalEnumerable Select()
	{
		return collection;
	}
}
