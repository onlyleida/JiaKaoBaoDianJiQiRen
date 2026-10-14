using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class GridViewSortEventArgs : CancelEventArgs
{
	private string _sortExpression;

	private SortDirection _sortDirection;

	public SortDirection SortDirection
	{
		get
		{
			return _sortDirection;
		}
		set
		{
			_sortDirection = value;
		}
	}

	public string SortExpression
	{
		get
		{
			return _sortExpression;
		}
		set
		{
			_sortExpression = value;
		}
	}

	public GridViewSortEventArgs(string sortExpression, SortDirection sortDirection)
	{
		_sortExpression = sortExpression;
		_sortDirection = sortDirection;
	}
}
