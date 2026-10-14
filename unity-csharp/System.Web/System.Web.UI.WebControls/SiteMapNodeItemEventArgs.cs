namespace System.Web.UI.WebControls;

public class SiteMapNodeItemEventArgs : EventArgs
{
	private SiteMapNodeItem _item;

	public SiteMapNodeItem Item => _item;

	public SiteMapNodeItemEventArgs(SiteMapNodeItem item)
	{
		_item = item;
	}
}
