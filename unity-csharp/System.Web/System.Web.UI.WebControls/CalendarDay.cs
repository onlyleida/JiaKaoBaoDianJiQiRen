using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CalendarDay
{
	private DateTime date;

	private bool isWeekend;

	private bool isToday;

	private bool isSelected;

	private bool isOtherMonth;

	private string dayNumberText;

	private bool isSelectable;

	public DateTime Date => date;

	public string DayNumberText => dayNumberText;

	public bool IsOtherMonth => isOtherMonth;

	public bool IsSelectable
	{
		get
		{
			return isSelectable;
		}
		set
		{
			isSelectable = value;
		}
	}

	public bool IsSelected => isSelected;

	public bool IsToday => isToday;

	public bool IsWeekend => isWeekend;

	public CalendarDay(DateTime date, bool isWeekend, bool isToday, bool isSelected, bool isOtherMonth, string dayNumberText)
	{
		this.date = date;
		this.isWeekend = isWeekend;
		this.isToday = isToday;
		this.isSelected = isSelected;
		this.isOtherMonth = isOtherMonth;
		this.dayNumberText = dayNumberText;
		isSelectable = false;
	}
}
