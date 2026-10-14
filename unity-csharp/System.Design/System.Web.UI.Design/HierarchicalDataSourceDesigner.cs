using System.ComponentModel.Design;
using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class HierarchicalDataSourceDesigner : ControlDesigner, IHierarchicalDataSourceDesigner
{
	[System.MonoTODO]
	public override DesignerActionListCollection ActionLists
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual bool CanConfigure
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual bool CanRefreshSchema
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected bool SuppressingDataSourceEvents
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public event EventHandler DataSourceChanged;

	public event EventHandler SchemaRefreshed;

	public virtual void Configure()
	{
		throw new NotSupportedException();
	}

	[System.MonoTODO]
	public override string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual DesignerHierarchicalDataSourceView GetView(string viewPath)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnDataSourceChanged(EventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnSchemaRefreshed(EventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void RefreshSchema(bool preferSilent)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void ResumeDataSourceEvents()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void SuppressDataSourceEvents()
	{
		throw new NotImplementedException();
	}
}
