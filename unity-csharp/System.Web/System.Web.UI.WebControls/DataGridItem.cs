using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DataGridItem : TableRow, INamingContainer, IDataItemContainer
{
	private object item;

	private int dataset_index;

	private int item_index;

	private ListItemType item_type;

	public virtual object DataItem
	{
		get
		{
			return item;
		}
		set
		{
			item = value;
		}
	}

	public virtual int DataSetIndex => dataset_index;

	public virtual int ItemIndex => item_index;

	public virtual ListItemType ItemType => item_type;

	object IDataItemContainer.DataItem => item;

	int IDataItemContainer.DataItemIndex => item_index;

	int IDataItemContainer.DisplayIndex => item_index;

	public DataGridItem(int itemIndex, int dataSetIndex, ListItemType itemType)
	{
		item_index = itemIndex;
		dataset_index = dataSetIndex;
		item_type = itemType;
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (e is CommandEventArgs)
		{
			RaiseBubbleEvent(this, new DataGridCommandEventArgs(this, source, (CommandEventArgs)e));
			return true;
		}
		return base.OnBubbleEvent(source, e);
	}

	protected internal virtual void SetItemType(ListItemType itemType)
	{
		item_type = itemType;
	}
}
