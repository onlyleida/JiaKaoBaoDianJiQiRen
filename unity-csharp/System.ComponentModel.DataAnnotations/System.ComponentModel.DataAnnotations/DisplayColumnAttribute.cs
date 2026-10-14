namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Class, Inherited = true, AllowMultiple = false)]
public class DisplayColumnAttribute : Attribute
{
	public string DisplayColumn { get; private set; }

	public string SortColumn { get; private set; }

	public bool SortDescending { get; private set; }

	public DisplayColumnAttribute(string displayColumn)
		: this(displayColumn, null)
	{
	}

	public DisplayColumnAttribute(string displayColumn, string sortColumn)
		: this(displayColumn, sortColumn, sortDescending: false)
	{
	}

	public DisplayColumnAttribute(string displayColumn, string sortColumn, bool sortDescending)
	{
		DisplayColumn = displayColumn;
		SortColumn = sortColumn;
		SortDescending = sortDescending;
	}
}
