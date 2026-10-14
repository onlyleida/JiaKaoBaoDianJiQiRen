namespace System.Web.UI.WebControls;

public class FormViewPagerRow : FormViewRow, INamingContainer, INonBindingContainer
{
	public FormViewPagerRow(int rowIndex, DataControlRowType rowType, DataControlRowState rowState)
		: base(rowIndex, rowType, rowState)
	{
	}
}
