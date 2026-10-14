using System.Collections;

namespace System.Web.UI.WebControls;

public class SiteMapDataSourceView : DataSourceView
{
	private SiteMapNodeCollection collection;

	public SiteMapDataSourceView(SiteMapDataSource owner, string name, SiteMapNode node)
		: this(owner, name, new SiteMapNodeCollection(node))
	{
	}

	public SiteMapDataSourceView(SiteMapDataSource owner, string name, SiteMapNodeCollection collection)
		: base(owner, name)
	{
		this.collection = collection;
	}

	public IEnumerable Select(DataSourceSelectArguments arguments)
	{
		return ExecuteSelect(arguments);
	}

	protected internal override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
	{
		arguments.RaiseUnsupportedCapabilitiesError(this);
		return collection;
	}

	protected override void OnDataSourceViewChanged(EventArgs e)
	{
		base.OnDataSourceViewChanged(e);
	}
}
