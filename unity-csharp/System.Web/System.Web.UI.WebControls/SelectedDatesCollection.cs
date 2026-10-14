using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class SelectedDatesCollection : ICollection, IEnumerable
{
	private ArrayList l;

	public int Count => l.Count;

	public bool IsReadOnly => l.IsReadOnly;

	public bool IsSynchronized => l.IsSynchronized;

	public DateTime this[int index] => (DateTime)l[index];

	public object SyncRoot => this;

	public SelectedDatesCollection(ArrayList dateList)
	{
		l = dateList;
	}

	public void Add(DateTime date)
	{
		date = date.Date;
		if (!l.Contains(date))
		{
			l.Add(date);
		}
	}

	public void Clear()
	{
		l.Clear();
	}

	public bool Contains(DateTime date)
	{
		return l.Contains(date.Date);
	}

	public void CopyTo(Array array, int index)
	{
		l.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return l.GetEnumerator();
	}

	public void Remove(DateTime date)
	{
		l.Remove(date.Date);
	}

	public void SelectRange(DateTime fromDate, DateTime toDate)
	{
		fromDate = fromDate.Date;
		toDate = toDate.Date;
		l.Clear();
		DateTime dateTime = fromDate;
		while (dateTime <= toDate)
		{
			Add(dateTime);
			dateTime = dateTime.AddDays(1.0);
		}
	}
}
