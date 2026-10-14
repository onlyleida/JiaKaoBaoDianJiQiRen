using System.ComponentModel.Design;
using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class DataSourceDesigner : ControlDesigner, IDataSourceDesigner
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

	[System.MonoTODO]
	public static bool SchemasEquivalent(IDataSourceSchema schema1, IDataSourceSchema schema2)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static bool ViewSchemasEquivalent(IDataSourceViewSchema viewSchema1, IDataSourceViewSchema viewSchema2)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void Configure()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual DesignerDataSourceView GetView(string viewName)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual string[] GetViewNames()
	{
		throw new NotImplementedException();
	}

	protected virtual void OnDataSourceChanged(EventArgs e)
	{
		if (DataSourceChanged != null)
		{
			DataSourceChanged(this, e);
		}
	}

	protected virtual void OnSchemaRefreshed(EventArgs e)
	{
		if (SchemaRefreshed != null)
		{
			SchemaRefreshed(this, e);
		}
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
