namespace System.Web.UI.WebControls;

public sealed class DayRenderEventArgs
{
	private TableCell cell;

	private CalendarDay day;

	private string _selectUrl;

	public TableCell Cell => cell;

	public CalendarDay Day => day;

	public string SelectUrl => _selectUrl;

	public DayRenderEventArgs(TableCell cell, CalendarDay day)
	{
		this.cell = cell;
		this.day = day;
	}

	public DayRenderEventArgs(TableCell cell, CalendarDay day, string selectUrl)
		: this(cell, day)
	{
		_selectUrl = selectUrl;
	}
}
