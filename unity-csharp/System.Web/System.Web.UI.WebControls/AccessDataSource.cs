using System.ComponentModel;
using System.Data.Common;
using System.Drawing;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.AccessDataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ToolboxBitmap("")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class AccessDataSource : SqlDataSource
{
	private const string PROVIDER_NAME = "System.Data.OleDb";

	private const string PROVIDER_STRING = "Microsoft.Jet.OLEDB.4.0";

	private string connectionString;

	[Browsable(false)]
	[MonoTODO("AccessDataSource does not support SQL Cache Dependencies")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string SqlCacheDependency
	{
		get
		{
			throw new NotSupportedException("AccessDataSource does not supports SQL Cache Dependencies.");
		}
		set
		{
			throw new NotSupportedException("AccessDataSource does not supports SQL Cache Dependencies.");
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string ConnectionString
	{
		get
		{
			if (connectionString == null)
			{
				connectionString = "Provider=" + "Microsoft.Jet.OLEDB.4.0" + "; Data Source=" + GetPhysicalDataFilePath();
			}
			return connectionString;
		}
		set
		{
			throw new InvalidOperationException("The ConnectionString is automatically generated for AccessDataSource and hence cannot be set.");
		}
	}

	[UrlProperty]
	[DefaultValue("")]
	[WebCategory("Data")]
	[WebSysDescription("MS Office Access database file name")]
	[Editor("System.Web.UI.Design.MdbDataFileEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string DataFile
	{
		get
		{
			return ViewState.GetString("DataFile", string.Empty);
		}
		set
		{
			ViewState["DataFile"] = value;
			connectionString = null;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string ProviderName
	{
		get
		{
			return base.ProviderName;
		}
		set
		{
			throw new InvalidOperationException("Setting ProviderName on an AccessDataSource is not allowed");
		}
	}

	public AccessDataSource()
	{
		base.ProviderName = "System.Data.OleDb";
	}

	public AccessDataSource(string dataFile, string selectCommand)
		: base(string.Empty, selectCommand)
	{
		ProviderName = "System.Data.OleDb";
	}

	protected override SqlDataSourceView CreateDataSourceView(string viewName)
	{
		AccessDataSourceView accessDataSourceView = new AccessDataSourceView(this, viewName, Context);
		if (IsTrackingViewState)
		{
			((IStateManager)accessDataSourceView).TrackViewState();
		}
		return accessDataSourceView;
	}

	[MonoTODO("why override?  maybe it doesn't call DbProviderFactories.GetFactory?")]
	protected override DbProviderFactory GetDbProviderFactory()
	{
		return DbProviderFactories.GetFactory("System.Data.OleDb");
	}

	private string GetPhysicalDataFilePath()
	{
		if (string.IsNullOrEmpty(DataFile))
		{
			return string.Empty;
		}
		return HttpContext.Current.Request.MapPath(DataFile);
	}
}
