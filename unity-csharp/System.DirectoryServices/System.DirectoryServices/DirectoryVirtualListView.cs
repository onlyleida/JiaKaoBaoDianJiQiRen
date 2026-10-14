using System.ComponentModel;

namespace System.DirectoryServices;

public class DirectoryVirtualListView
{
	[DefaultValue(0)]
	[DSDescription("DSBeforeCount")]
	public int BeforeCount
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[DSDescription("DSAfterCount")]
	[DefaultValue(0)]
	public int AfterCount
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[DSDescription("DSOffset")]
	[DefaultValue(0)]
	public int Offset
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[DefaultValue(0)]
	[DSDescription("DSTargetPercentage")]
	public int TargetPercentage
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[DSDescription("DSTarget")]
	[DefaultValue("")]
	[TypeConverter("System.Diagnostics.Design.StringValueConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string Target
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[DSDescription("DSApproximateTotal")]
	[DefaultValue(0)]
	public int ApproximateTotal
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[DefaultValue(null)]
	[DSDescription("DSDirectoryVirtualListViewContext")]
	public DirectoryVirtualListViewContext DirectoryVirtualListViewContext
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public DirectoryVirtualListView()
	{
	}

	public DirectoryVirtualListView(int afterCount)
	{
	}

	public DirectoryVirtualListView(int beforeCount, int afterCount, int offset)
	{
	}

	public DirectoryVirtualListView(int beforeCount, int afterCount, string target)
	{
	}

	public DirectoryVirtualListView(int beforeCount, int afterCount, int offset, DirectoryVirtualListViewContext context)
	{
	}

	public DirectoryVirtualListView(int beforeCount, int afterCount, string target, DirectoryVirtualListViewContext context)
	{
	}
}
