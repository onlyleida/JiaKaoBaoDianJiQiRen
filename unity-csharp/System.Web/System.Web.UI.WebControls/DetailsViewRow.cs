using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DetailsViewRow : TableRow
{
	private int rowIndex;

	private DataControlRowState rowState;

	private DataControlRowType rowType;

	private DataControlField containingField;

	public virtual int RowIndex => rowIndex;

	public virtual DataControlRowState RowState => rowState;

	public virtual DataControlRowType RowType => rowType;

	internal DataControlField ContainingField
	{
		get
		{
			return containingField;
		}
		set
		{
			containingField = value;
		}
	}

	public DetailsViewRow(int rowIndex, DataControlRowType rowType, DataControlRowState rowState)
	{
		this.rowIndex = rowIndex;
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
			DetailsViewCommandEventArgs args = new DetailsViewCommandEventArgs(source, (CommandEventArgs)e);
			RaiseBubbleEvent(source, args);
			return true;
		}
		return false;
	}
}
