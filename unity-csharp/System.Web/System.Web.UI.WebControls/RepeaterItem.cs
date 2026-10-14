using System.ComponentModel;

namespace System.Web.UI.WebControls;

[ToolboxItem("")]
public class RepeaterItem : Control, INamingContainer, IDataItemContainer
{
	private object data_item;

	private int idx;

	private ListItemType type;

	public virtual object DataItem
	{
		get
		{
			return data_item;
		}
		set
		{
			data_item = value;
		}
	}

	public virtual int ItemIndex => idx;

	public virtual ListItemType ItemType => type;

	int IDataItemContainer.DataItemIndex => ItemIndex;

	int IDataItemContainer.DisplayIndex => ItemIndex;

	public RepeaterItem(int itemIndex, ListItemType itemType)
	{
		idx = itemIndex;
		type = itemType;
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (e is CommandEventArgs originalArgs)
		{
			RaiseBubbleEvent(this, new RepeaterCommandEventArgs(this, source, originalArgs));
			return true;
		}
		return false;
	}
}
