using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class FormViewRow : TableRow
{
	private int rowIndex;

	private DataControlRowState rowState;

	private DataControlRowType rowType;

	internal bool RenderJustCellContents { get; set; }

	public virtual int ItemIndex => rowIndex;

	public virtual DataControlRowState RowState => rowState;

	public virtual DataControlRowType RowType => rowType;

	public FormViewRow(int itemIndex, DataControlRowType rowType, DataControlRowState rowState)
	{
		rowIndex = itemIndex;
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
			FormViewCommandEventArgs args = new FormViewCommandEventArgs(source, (CommandEventArgs)e);
			RaiseBubbleEvent(source, args);
			return true;
		}
		return false;
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (!RenderJustCellContents)
		{
			base.Render(writer);
			return;
		}
		foreach (TableCell cell in Cells)
		{
			cell.RenderContents(writer);
		}
	}
}
