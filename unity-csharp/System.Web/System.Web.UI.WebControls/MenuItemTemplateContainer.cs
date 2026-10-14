namespace System.Web.UI.WebControls;

public sealed class MenuItemTemplateContainer : Control, IDataItemContainer, INamingContainer
{
	private object dataItem;

	private int index;

	public object DataItem
	{
		get
		{
			return dataItem;
		}
		set
		{
			dataItem = value;
		}
	}

	public int ItemIndex => index;

	int IDataItemContainer.DataItemIndex => index;

	int IDataItemContainer.DisplayIndex => index;

	public MenuItemTemplateContainer(int itemIndex, MenuItem dataItem)
	{
		index = itemIndex;
		this.dataItem = dataItem;
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (!(e is CommandEventArgs originalArgs))
		{
			return false;
		}
		MenuEventArgs args = new MenuEventArgs((MenuItem)DataItem, source, originalArgs);
		RaiseBubbleEvent(this, args);
		return true;
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		base.Render(writer);
	}
}
