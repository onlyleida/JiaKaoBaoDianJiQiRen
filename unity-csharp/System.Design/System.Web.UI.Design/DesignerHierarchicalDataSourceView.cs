namespace System.Web.UI.Design;

public abstract class DesignerHierarchicalDataSourceView
{
	[System.MonoTODO]
	public IHierarchicalDataSourceDesigner DataSourceDesigner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public string Path
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual IDataSourceSchema Schema
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected DesignerHierarchicalDataSourceView(IHierarchicalDataSourceDesigner owner, string viewPath)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual IHierarchicalEnumerable GetDesignTimeData(out bool isSampleData)
	{
		throw new NotImplementedException();
	}
}
