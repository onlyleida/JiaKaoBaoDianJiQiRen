namespace System.Web.UI;

public sealed class DataSourceSelectArguments
{
	private string sortExpression;

	private int startingRowIndex;

	private int maxRows;

	private bool getTotalRowCount;

	private int totalRowCount = -1;

	private DataSourceCapabilities dsc;

	public static DataSourceSelectArguments Empty => new DataSourceSelectArguments();

	private DataSourceCapabilities RequestedCapabilities
	{
		get
		{
			DataSourceCapabilities dataSourceCapabilities = DataSourceCapabilities.None;
			if (!string.IsNullOrEmpty(SortExpression))
			{
				dataSourceCapabilities |= DataSourceCapabilities.Sort;
			}
			if (RetrieveTotalRowCount)
			{
				dataSourceCapabilities |= DataSourceCapabilities.RetrieveTotalRowCount;
			}
			if (StartRowIndex > 0 || MaximumRows > 0)
			{
				dataSourceCapabilities |= DataSourceCapabilities.Page;
			}
			return dataSourceCapabilities;
		}
	}

	public int MaximumRows
	{
		get
		{
			return maxRows;
		}
		set
		{
			maxRows = value;
		}
	}

	public bool RetrieveTotalRowCount
	{
		get
		{
			return getTotalRowCount;
		}
		set
		{
			getTotalRowCount = value;
		}
	}

	public string SortExpression
	{
		get
		{
			if (sortExpression == null)
			{
				return string.Empty;
			}
			return sortExpression;
		}
		set
		{
			sortExpression = value;
		}
	}

	public int StartRowIndex
	{
		get
		{
			return startingRowIndex;
		}
		set
		{
			startingRowIndex = value;
		}
	}

	public int TotalRowCount
	{
		get
		{
			return totalRowCount;
		}
		set
		{
			totalRowCount = value;
		}
	}

	public DataSourceSelectArguments()
	{
	}

	public DataSourceSelectArguments(string sortExpression)
	{
		this.sortExpression = sortExpression;
	}

	public DataSourceSelectArguments(int startRowIndex, int maximumRows)
	{
		startingRowIndex = startRowIndex;
		maxRows = maximumRows;
	}

	public DataSourceSelectArguments(string sortExpression, int startRowIndex, int maximumRows)
	{
		this.sortExpression = sortExpression;
		startingRowIndex = startRowIndex;
		maxRows = maximumRows;
	}

	public void AddSupportedCapabilities(DataSourceCapabilities capabilities)
	{
		dsc |= capabilities;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is DataSourceSelectArguments dataSourceSelectArguments))
		{
			return false;
		}
		if (SortExpression == dataSourceSelectArguments.SortExpression && StartRowIndex == dataSourceSelectArguments.StartRowIndex && MaximumRows == dataSourceSelectArguments.MaximumRows && RetrieveTotalRowCount == dataSourceSelectArguments.RetrieveTotalRowCount)
		{
			return TotalRowCount == dataSourceSelectArguments.TotalRowCount;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return ((SortExpression != null) ? SortExpression.GetHashCode() : 0) ^ StartRowIndex ^ MaximumRows ^ RetrieveTotalRowCount.GetHashCode() ^ TotalRowCount;
	}

	public void RaiseUnsupportedCapabilitiesError(DataSourceView view)
	{
		DataSourceCapabilities requestedCapabilities = RequestedCapabilities;
		DataSourceCapabilities dataSourceCapabilities = (requestedCapabilities ^ dsc) & requestedCapabilities;
		if (dataSourceCapabilities != DataSourceCapabilities.None)
		{
			if ((dataSourceCapabilities & DataSourceCapabilities.RetrieveTotalRowCount) > DataSourceCapabilities.None)
			{
				dataSourceCapabilities = DataSourceCapabilities.RetrieveTotalRowCount;
			}
			else if ((dataSourceCapabilities & DataSourceCapabilities.Page) > DataSourceCapabilities.None)
			{
				dataSourceCapabilities = DataSourceCapabilities.Page;
			}
			view.RaiseUnsupportedCapabilityError(dataSourceCapabilities);
		}
	}
}
