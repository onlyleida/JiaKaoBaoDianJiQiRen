using System.Collections;
using System.ComponentModel;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;

namespace System.Web.UI.WebControls;

[ParseChildren(true)]
[DefaultProperty("SelectQuery")]
[ToolboxBitmap("")]
[PersistChildren(false)]
[Designer("System.Web.UI.Design.WebControls.SqlDataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("Selecting")]
public class SqlDataSource : DataSourceControl
{
	private static readonly string[] emptyNames = new string[1] { "DefaultView" };

	private string providerName = string.Empty;

	private string connectionString = string.Empty;

	private SqlDataSourceMode dataSourceMode = SqlDataSourceMode.DataSet;

	private int cacheDuration;

	private bool enableCaching;

	private string cacheKeyDependency;

	private string sqlCacheDependency;

	private DataSourceCacheManager cache;

	private DataSourceCacheExpiry cacheExpirationPolicy;

	private SqlDataSourceView view;

	[DefaultValue(true)]
	public virtual bool CancelSelectOnNullParameter
	{
		get
		{
			return View.CancelSelectOnNullParameter;
		}
		set
		{
			View.CancelSelectOnNullParameter = value;
		}
	}

	[DefaultValue(ConflictOptions.OverwriteChanges)]
	public ConflictOptions ConflictDetection
	{
		get
		{
			return View.ConflictDetection;
		}
		set
		{
			View.ConflictDetection = value;
		}
	}

	[DefaultValue(SqlDataSourceCommandType.Text)]
	public SqlDataSourceCommandType DeleteCommandType
	{
		get
		{
			return View.DeleteCommandType;
		}
		set
		{
			View.DeleteCommandType = value;
		}
	}

	[DefaultValue(SqlDataSourceCommandType.Text)]
	public SqlDataSourceCommandType InsertCommandType
	{
		get
		{
			return View.InsertCommandType;
		}
		set
		{
			View.InsertCommandType = value;
		}
	}

	[DefaultValue(SqlDataSourceCommandType.Text)]
	public SqlDataSourceCommandType SelectCommandType
	{
		get
		{
			return View.SelectCommandType;
		}
		set
		{
			View.SelectCommandType = value;
		}
	}

	[DefaultValue(SqlDataSourceCommandType.Text)]
	public SqlDataSourceCommandType UpdateCommandType
	{
		get
		{
			return View.UpdateCommandType;
		}
		set
		{
			View.UpdateCommandType = value;
		}
	}

	[DefaultValue("{0}")]
	public string OldValuesParameterFormatString
	{
		get
		{
			return View.OldValuesParameterFormatString;
		}
		set
		{
			View.OldValuesParameterFormatString = value;
		}
	}

	[DefaultValue("")]
	public string SortParameterName
	{
		get
		{
			return View.SortParameterName;
		}
		set
		{
			View.SortParameterName = value;
		}
	}

	[DefaultValue("")]
	public string FilterExpression
	{
		get
		{
			return View.FilterExpression;
		}
		set
		{
			View.FilterExpression = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.WebControls.DataProviderNameConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string ProviderName
	{
		get
		{
			return providerName;
		}
		set
		{
			if (providerName != value)
			{
				providerName = value;
				RaiseDataSourceChangedEvent(EventArgs.Empty);
			}
		}
	}

	[DefaultValue("")]
	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.WebControls.SqlDataSourceConnectionStringEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string ConnectionString
	{
		get
		{
			return connectionString;
		}
		set
		{
			if (connectionString != value)
			{
				connectionString = value;
				RaiseDataSourceChangedEvent(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(SqlDataSourceMode.DataSet)]
	public SqlDataSourceMode DataSourceMode
	{
		get
		{
			return dataSourceMode;
		}
		set
		{
			if (dataSourceMode != value)
			{
				dataSourceMode = value;
				RaiseDataSourceChangedEvent(EventArgs.Empty);
			}
		}
	}

	[DefaultValue("")]
	public string DeleteCommand
	{
		get
		{
			return View.DeleteCommand;
		}
		set
		{
			View.DeleteCommand = value;
		}
	}

	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public ParameterCollection DeleteParameters => View.DeleteParameters;

	[DefaultValue(null)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[MergableProperty(false)]
	public ParameterCollection FilterParameters => View.FilterParameters;

	[DefaultValue("")]
	public string InsertCommand
	{
		get
		{
			return View.InsertCommand;
		}
		set
		{
			View.InsertCommand = value;
		}
	}

	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public ParameterCollection InsertParameters => View.InsertParameters;

	[DefaultValue("")]
	public string SelectCommand
	{
		get
		{
			return View.SelectCommand;
		}
		set
		{
			View.SelectCommand = value;
		}
	}

	[MergableProperty(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue(null)]
	public ParameterCollection SelectParameters => View.SelectParameters;

	[DefaultValue("")]
	public string UpdateCommand
	{
		get
		{
			return View.UpdateCommand;
		}
		set
		{
			View.UpdateCommand = value;
		}
	}

	[DefaultValue(null)]
	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public ParameterCollection UpdateParameters => View.UpdateParameters;

	internal DataSourceCacheManager Cache
	{
		get
		{
			if (cache == null)
			{
				cache = new DataSourceCacheManager(CacheDuration, CacheKeyDependency, CacheExpirationPolicy, this, Context);
			}
			return cache;
		}
	}

	[DefaultValue("")]
	public virtual string CacheKeyDependency
	{
		get
		{
			if (cacheKeyDependency == null)
			{
				return string.Empty;
			}
			return cacheKeyDependency;
		}
		set
		{
			cacheKeyDependency = value;
		}
	}

	[DefaultValue("")]
	[MonoTODO("SQLServer specific")]
	public virtual string SqlCacheDependency
	{
		get
		{
			if (sqlCacheDependency == null)
			{
				return string.Empty;
			}
			return sqlCacheDependency;
		}
		set
		{
			sqlCacheDependency = value;
		}
	}

	[TypeConverter("System.Web.UI.DataSourceCacheDurationConverter")]
	[DefaultValue(0)]
	public virtual int CacheDuration
	{
		get
		{
			return cacheDuration;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value", "The duration must be non-negative");
			}
			cacheDuration = value;
		}
	}

	[DefaultValue(DataSourceCacheExpiry.Absolute)]
	public virtual DataSourceCacheExpiry CacheExpirationPolicy
	{
		get
		{
			return cacheExpirationPolicy;
		}
		set
		{
			cacheExpirationPolicy = value;
		}
	}

	[DefaultValue(false)]
	public virtual bool EnableCaching
	{
		get
		{
			return enableCaching;
		}
		set
		{
			if ((DataSourceMode == SqlDataSourceMode.DataReader) & value)
			{
				throw new NotSupportedException();
			}
			enableCaching = value;
		}
	}

	private SqlDataSourceView View
	{
		get
		{
			if (view == null)
			{
				view = CreateDataSourceView("DefaultView");
				if (IsTrackingViewState)
				{
					((IStateManager)view).TrackViewState();
				}
			}
			return view;
		}
	}

	public event SqlDataSourceStatusEventHandler Deleted
	{
		add
		{
			View.Deleted += value;
		}
		remove
		{
			View.Deleted -= value;
		}
	}

	public event SqlDataSourceCommandEventHandler Deleting
	{
		add
		{
			View.Deleting += value;
		}
		remove
		{
			View.Deleting -= value;
		}
	}

	public event SqlDataSourceStatusEventHandler Inserted
	{
		add
		{
			View.Inserted += value;
		}
		remove
		{
			View.Inserted -= value;
		}
	}

	public event SqlDataSourceFilteringEventHandler Filtering
	{
		add
		{
			View.Filtering += value;
		}
		remove
		{
			View.Filtering -= value;
		}
	}

	public event SqlDataSourceCommandEventHandler Inserting
	{
		add
		{
			View.Inserting += value;
		}
		remove
		{
			View.Inserting -= value;
		}
	}

	public event SqlDataSourceStatusEventHandler Selected
	{
		add
		{
			View.Selected += value;
		}
		remove
		{
			View.Selected -= value;
		}
	}

	public event SqlDataSourceSelectingEventHandler Selecting
	{
		add
		{
			View.Selecting += value;
		}
		remove
		{
			View.Selecting -= value;
		}
	}

	public event SqlDataSourceStatusEventHandler Updated
	{
		add
		{
			View.Updated += value;
		}
		remove
		{
			View.Updated -= value;
		}
	}

	public event SqlDataSourceCommandEventHandler Updating
	{
		add
		{
			View.Updating += value;
		}
		remove
		{
			View.Updating -= value;
		}
	}

	public SqlDataSource()
	{
	}

	public SqlDataSource(string connectionString, string selectCommand)
	{
		ConnectionString = connectionString;
		SelectCommand = selectCommand;
	}

	public SqlDataSource(string providerName, string connectionString, string selectCommand)
	{
		ProviderName = providerName;
		ConnectionString = connectionString;
		SelectCommand = selectCommand;
	}

	protected override DataSourceView GetView(string viewName)
	{
		if (string.IsNullOrEmpty(viewName) || string.Compare(viewName, emptyNames[0], StringComparison.InvariantCultureIgnoreCase) == 0)
		{
			return View;
		}
		throw new ArgumentException("viewName");
	}

	protected virtual SqlDataSourceView CreateDataSourceView(string viewName)
	{
		SqlDataSourceView sqlDataSourceView = new SqlDataSourceView(this, viewName, Context);
		if (IsTrackingViewState)
		{
			((IStateManager)sqlDataSourceView).TrackViewState();
		}
		return sqlDataSourceView;
	}

	protected virtual DbProviderFactory GetDbProviderFactory()
	{
		if (!string.IsNullOrEmpty(ProviderName))
		{
			return DbProviderFactories.GetFactory(ProviderName);
		}
		return SqlClientFactory.Instance;
	}

	internal DbProviderFactory GetDbProviderFactoryInternal()
	{
		return GetDbProviderFactory();
	}

	protected override ICollection GetViewNames()
	{
		return emptyNames;
	}

	public int Insert()
	{
		return View.Insert(null);
	}

	public int Delete()
	{
		return View.Delete(null, null);
	}

	public IEnumerable Select(DataSourceSelectArguments arguments)
	{
		return View.Select(arguments);
	}

	public int Update()
	{
		return View.Update(null, null, null);
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		Page.LoadComplete += OnPageLoadComplete;
	}

	private void OnPageLoadComplete(object sender, EventArgs e)
	{
		FilterParameters.UpdateValues(Context, this);
		SelectParameters.UpdateValues(Context, this);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState is Pair pair)
		{
			base.LoadViewState(pair.First);
			((IStateManager)View).LoadViewState(pair.Second);
		}
	}

	protected override object SaveViewState()
	{
		object obj = base.SaveViewState();
		object obj2 = ((IStateManager)View).SaveViewState();
		if (obj != null || obj2 != null)
		{
			return new Pair(obj, obj2);
		}
		return null;
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (view != null)
		{
			((IStateManager)view).TrackViewState();
		}
	}
}
