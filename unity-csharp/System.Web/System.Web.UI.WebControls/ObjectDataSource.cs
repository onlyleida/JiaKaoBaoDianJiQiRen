using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[PersistChildren(false)]
[DefaultEvent("Selecting")]
[DefaultProperty("TypeName")]
[Designer("System.Web.UI.Design.WebControls.ObjectDataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ParseChildren(true)]
[ToolboxBitmap("bitmap file goes here")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ObjectDataSource : DataSourceControl
{
	private static readonly string[] emptyNames = new string[1] { "DefaultView" };

	private ObjectDataSourceView defaultView;

	private int cacheDuration;

	private bool enableCaching;

	private string cacheKeyDependency;

	private string sqlCacheDependency;

	private DataSourceCacheManager cache;

	private DataSourceCacheExpiry cacheExpirationPolicy;

	private ObjectDataSourceView DefaultView
	{
		get
		{
			if (defaultView == null)
			{
				defaultView = new ObjectDataSourceView(this, emptyNames[0], Context);
				if (IsTrackingViewState)
				{
					((IStateManager)defaultView).TrackViewState();
				}
			}
			return defaultView;
		}
	}

	[DefaultValue(0)]
	[TypeConverter(typeof(DataSourceCacheDurationConverter))]
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

	[WebCategory("Data")]
	[DefaultValue(ConflictOptions.OverwriteChanges)]
	public ConflictOptions ConflictDetection
	{
		get
		{
			return DefaultView.ConflictDetection;
		}
		set
		{
			DefaultView.ConflictDetection = value;
		}
	}

	[DefaultValue(false)]
	public bool ConvertNullToDBNull
	{
		get
		{
			return DefaultView.ConvertNullToDBNull;
		}
		set
		{
			DefaultView.ConvertNullToDBNull = value;
		}
	}

	[DefaultValue("")]
	[WebCategory("Data")]
	public string DataObjectTypeName
	{
		get
		{
			return DefaultView.DataObjectTypeName;
		}
		set
		{
			DefaultView.DataObjectTypeName = value;
		}
	}

	[DefaultValue("")]
	[WebCategory("Data")]
	public string DeleteMethod
	{
		get
		{
			return DefaultView.DeleteMethod;
		}
		set
		{
			DefaultView.DeleteMethod = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Data")]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue(null)]
	[MergableProperty(false)]
	public ParameterCollection DeleteParameters => DefaultView.DeleteParameters;

	[DefaultValue(false)]
	public virtual bool EnableCaching
	{
		get
		{
			return enableCaching;
		}
		set
		{
			enableCaching = value;
		}
	}

	[WebCategory("Paging")]
	[DefaultValue(false)]
	public bool EnablePaging
	{
		get
		{
			return DefaultView.EnablePaging;
		}
		set
		{
			DefaultView.EnablePaging = value;
		}
	}

	[WebCategory("Data")]
	[DefaultValue("")]
	public string FilterExpression
	{
		get
		{
			return DefaultView.FilterExpression;
		}
		set
		{
			DefaultView.FilterExpression = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[MergableProperty(false)]
	[DefaultValue(null)]
	[WebCategory("Data")]
	public ParameterCollection FilterParameters => DefaultView.FilterParameters;

	[DefaultValue("")]
	[WebCategory("Data")]
	public string InsertMethod
	{
		get
		{
			return DefaultView.InsertMethod;
		}
		set
		{
			DefaultView.InsertMethod = value;
		}
	}

	[MergableProperty(false)]
	[WebCategory("Data")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public ParameterCollection InsertParameters => DefaultView.InsertParameters;

	[DefaultValue("maximumRows")]
	[WebCategory("Paging")]
	public string MaximumRowsParameterName
	{
		get
		{
			return DefaultView.MaximumRowsParameterName;
		}
		set
		{
			DefaultView.MaximumRowsParameterName = value;
		}
	}

	[WebCategory("Data")]
	[DefaultValue("{0}")]
	public string OldValuesParameterFormatString
	{
		get
		{
			return DefaultView.OldValuesParameterFormatString;
		}
		set
		{
			DefaultView.OldValuesParameterFormatString = value;
		}
	}

	[WebCategory("Paging")]
	[DefaultValue("")]
	public string SelectCountMethod
	{
		get
		{
			return DefaultView.SelectCountMethod;
		}
		set
		{
			DefaultView.SelectCountMethod = value;
		}
	}

	[WebCategory("Data")]
	[DefaultValue("")]
	public string SelectMethod
	{
		get
		{
			return DefaultView.SelectMethod;
		}
		set
		{
			DefaultView.SelectMethod = value;
		}
	}

	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Data")]
	public ParameterCollection SelectParameters => DefaultView.SelectParameters;

	[DefaultValue("")]
	[WebCategory("Data")]
	public string SortParameterName
	{
		get
		{
			return DefaultView.SortParameterName;
		}
		set
		{
			DefaultView.SortParameterName = value;
		}
	}

	[MonoTODO("SQLServer specific")]
	[DefaultValue("")]
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

	[DefaultValue("startRowIndex")]
	[WebCategory("Paging")]
	public string StartRowIndexParameterName
	{
		get
		{
			return DefaultView.StartRowIndexParameterName;
		}
		set
		{
			DefaultView.StartRowIndexParameterName = value;
		}
	}

	[DefaultValue("")]
	[WebCategory("Data")]
	public string TypeName
	{
		get
		{
			return DefaultView.TypeName;
		}
		set
		{
			DefaultView.TypeName = value;
		}
	}

	[DefaultValue("")]
	[WebCategory("Data")]
	public string UpdateMethod
	{
		get
		{
			return DefaultView.UpdateMethod;
		}
		set
		{
			DefaultView.UpdateMethod = value;
		}
	}

	[WebCategory("Data")]
	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public ParameterCollection UpdateParameters => DefaultView.UpdateParameters;

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

	public ParsingCulture ParsingCulture
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event ObjectDataSourceStatusEventHandler Deleted
	{
		add
		{
			DefaultView.Deleted += value;
		}
		remove
		{
			DefaultView.Deleted -= value;
		}
	}

	public event ObjectDataSourceMethodEventHandler Deleting
	{
		add
		{
			DefaultView.Deleting += value;
		}
		remove
		{
			DefaultView.Deleting -= value;
		}
	}

	public event ObjectDataSourceFilteringEventHandler Filtering
	{
		add
		{
			DefaultView.Filtering += value;
		}
		remove
		{
			DefaultView.Filtering -= value;
		}
	}

	public event ObjectDataSourceStatusEventHandler Inserted
	{
		add
		{
			DefaultView.Inserted += value;
		}
		remove
		{
			DefaultView.Inserted -= value;
		}
	}

	public event ObjectDataSourceMethodEventHandler Inserting
	{
		add
		{
			DefaultView.Inserting += value;
		}
		remove
		{
			DefaultView.Inserting -= value;
		}
	}

	public event ObjectDataSourceObjectEventHandler ObjectCreated
	{
		add
		{
			DefaultView.ObjectCreated += value;
		}
		remove
		{
			DefaultView.ObjectCreated -= value;
		}
	}

	public event ObjectDataSourceObjectEventHandler ObjectCreating
	{
		add
		{
			DefaultView.ObjectCreating += value;
		}
		remove
		{
			DefaultView.ObjectCreating -= value;
		}
	}

	public event ObjectDataSourceDisposingEventHandler ObjectDisposing
	{
		add
		{
			DefaultView.ObjectDisposing += value;
		}
		remove
		{
			DefaultView.ObjectDisposing -= value;
		}
	}

	public event ObjectDataSourceStatusEventHandler Selected
	{
		add
		{
			DefaultView.Selected += value;
		}
		remove
		{
			DefaultView.Selected -= value;
		}
	}

	public event ObjectDataSourceSelectingEventHandler Selecting
	{
		add
		{
			DefaultView.Selecting += value;
		}
		remove
		{
			DefaultView.Selecting -= value;
		}
	}

	public event ObjectDataSourceStatusEventHandler Updated
	{
		add
		{
			DefaultView.Updated += value;
		}
		remove
		{
			DefaultView.Updated -= value;
		}
	}

	public event ObjectDataSourceMethodEventHandler Updating
	{
		add
		{
			DefaultView.Updating += value;
		}
		remove
		{
			DefaultView.Updating -= value;
		}
	}

	public ObjectDataSource()
	{
	}

	public ObjectDataSource(string typeName, string selectMethod)
	{
		SelectMethod = selectMethod;
		TypeName = typeName;
	}

	protected override DataSourceView GetView(string viewName)
	{
		if (viewName == null)
		{
			throw new ArgumentException("viewName");
		}
		return DefaultView;
	}

	protected override ICollection GetViewNames()
	{
		return emptyNames;
	}

	public IEnumerable Select()
	{
		return DefaultView.Select(DataSourceSelectArguments.Empty);
	}

	public int Update()
	{
		Hashtable hashtable = new Hashtable();
		return DefaultView.Update(hashtable, hashtable, null);
	}

	public int Delete()
	{
		Hashtable keys = new Hashtable();
		return DefaultView.Delete(keys, null);
	}

	public int Insert()
	{
		Hashtable values = new Hashtable();
		return DefaultView.Insert(values);
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page.LoadComplete += OnPageLoadComplete;
	}

	private void OnPageLoadComplete(object sender, EventArgs e)
	{
		FilterParameters.UpdateValues(Context, this);
		SelectParameters.UpdateValues(Context, this);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			base.LoadViewState(null);
			((IStateManager)DefaultView).LoadViewState((object)null);
		}
		else
		{
			Pair pair = (Pair)savedState;
			base.LoadViewState(pair.First);
			((IStateManager)DefaultView).LoadViewState(pair.Second);
		}
	}

	protected override object SaveViewState()
	{
		object obj = base.SaveViewState();
		object obj2 = ((IStateManager)DefaultView).SaveViewState();
		if (obj != null || obj2 != null)
		{
			return new Pair(obj, obj2);
		}
		return null;
	}

	protected override void TrackViewState()
	{
		((IStateManager)DefaultView).TrackViewState();
	}
}
