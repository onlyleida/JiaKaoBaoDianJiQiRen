using System.ComponentModel;

namespace System.DirectoryServices;

[TypeConverter(typeof(ExpandableObjectConverter))]
public class SortOption
{
	private string propertyName;

	private SortDirection direction;

	[DSDescription("Name of propertion to be sorted on")]
	[DefaultValue(null)]
	public string PropertyName
	{
		get
		{
			return propertyName;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			propertyName = value;
		}
	}

	[DSDescription("Whether the sort is ascending or descending")]
	[DefaultValue(SortDirection.Ascending)]
	public SortDirection Direction
	{
		get
		{
			return direction;
		}
		set
		{
			direction = value;
		}
	}

	public SortOption()
	{
	}

	public SortOption(string propertyName, SortDirection direction)
	{
		this.propertyName = propertyName;
		this.direction = direction;
	}
}
