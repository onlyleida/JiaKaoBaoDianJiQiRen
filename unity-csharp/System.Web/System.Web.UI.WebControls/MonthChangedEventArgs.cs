namespace System.Web.UI.WebControls;

public class MonthChangedEventArgs
{
	private DateTime newDate;

	private DateTime previousDate;

	public DateTime NewDate => newDate;

	public DateTime PreviousDate => previousDate;

	public MonthChangedEventArgs(DateTime newDate, DateTime previousDate)
	{
		this.newDate = newDate;
		this.previousDate = previousDate;
	}
}
