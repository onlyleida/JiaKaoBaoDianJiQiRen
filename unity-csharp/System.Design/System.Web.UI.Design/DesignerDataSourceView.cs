using System.Collections;

namespace System.Web.UI.Design;

public abstract class DesignerDataSourceView
{
	[System.MonoNotSupported("")]
	public virtual bool CanDelete
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool CanInsert
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool CanPage
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool CanRetrieveTotalRowCount
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool CanSort
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual bool CanUpdate
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public IDataSourceDesigner DataSourceDesigner
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public string Name
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public virtual IDataSourceViewSchema Schema
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected DesignerDataSourceView(IDataSourceDesigner owner, string viewName)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public virtual IEnumerable GetDesignTimeData(int minimumRows, out bool isSampleData)
	{
		throw new NotImplementedException();
	}
}
