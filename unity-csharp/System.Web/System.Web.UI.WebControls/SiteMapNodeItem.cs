using System.ComponentModel;

namespace System.Web.UI.WebControls;

[ToolboxItem(false)]
public class SiteMapNodeItem : WebControl, IDataItemContainer, INamingContainer
{
	private int itemIndex;

	private SiteMapNodeItemType itemType;

	private SiteMapNode node;

	public virtual int ItemIndex => itemIndex;

	public virtual SiteMapNodeItemType ItemType => itemType;

	public virtual SiteMapNode SiteMapNode
	{
		get
		{
			return node;
		}
		set
		{
			node = value;
		}
	}

	object IDataItemContainer.DataItem => node;

	int IDataItemContainer.DataItemIndex => itemIndex;

	int IDataItemContainer.DisplayIndex => itemIndex;

	public SiteMapNodeItem(int itemIndex, SiteMapNodeItemType itemType)
	{
		this.itemIndex = itemIndex;
		SetItemType(itemType);
	}

	protected internal virtual void SetItemType(SiteMapNodeItemType itemType)
	{
		this.itemType = itemType;
	}
}
