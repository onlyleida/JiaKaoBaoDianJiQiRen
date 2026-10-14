using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class GridViewRow : TableRow, IDataItemContainer, INamingContainer
{
	private object dataItem;

	private int rowIndex;

	private int dataItemIndex;

	private DataControlRowState rowState;

	private DataControlRowType rowType;

	public virtual object DataItem
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

	public virtual int DataItemIndex => dataItemIndex;

	public virtual int RowIndex => rowIndex;

	public virtual DataControlRowState RowState
	{
		get
		{
			return rowState;
		}
		set
		{
			rowState = value;
		}
	}

	public virtual DataControlRowType RowType
	{
		get
		{
			return rowType;
		}
		set
		{
			rowType = value;
		}
	}

	object IDataItemContainer.DataItem => DataItem;

	int IDataItemContainer.DataItemIndex => DataItemIndex;

	int IDataItemContainer.DisplayIndex => RowIndex;

	public GridViewRow(int rowIndex, int dataItemIndex, DataControlRowType rowType, DataControlRowState rowState)
	{
		this.rowIndex = rowIndex;
		this.dataItemIndex = dataItemIndex;
		this.rowType = rowType;
		this.rowState = rowState;
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (base.OnBubbleEvent(source, e))
		{
			return true;
		}
		if (e is CommandEventArgs)
		{
			GridViewCommandEventArgs args = new GridViewCommandEventArgs(this, source, (CommandEventArgs)e);
			RaiseBubbleEvent(source, args);
			return true;
		}
		return false;
	}
}
