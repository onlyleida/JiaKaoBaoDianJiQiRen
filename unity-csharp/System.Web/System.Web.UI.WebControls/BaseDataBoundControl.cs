using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[DefaultProperty("DataSourceID")]
[Designer("System.Web.UI.Design.WebControls.BaseDataBoundControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class BaseDataBoundControl : WebControl
{
	private static readonly object dataBoundEvent = new object();

	private EventHandlerList events = new EventHandlerList();

	private object dataSource;

	private bool initialized;

	private bool preRendered;

	private bool requiresDataBinding;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(null)]
	[Themeable(false)]
	[Bindable(true)]
	public virtual object DataSource
	{
		get
		{
			return dataSource;
		}
		set
		{
			if (value != null)
			{
				ValidateDataSource(value);
			}
			dataSource = value;
			OnDataPropertyChanged();
		}
	}

	[Themeable(false)]
	[DefaultValue("")]
	public virtual string DataSourceID
	{
		get
		{
			return ViewState.GetString("DataSourceID", string.Empty);
		}
		set
		{
			ViewState["DataSourceID"] = value;
			OnDataPropertyChanged();
		}
	}

	protected bool Initialized => initialized;

	protected bool IsBoundUsingDataSourceID => DataSourceID.Length > 0;

	protected bool RequiresDataBinding
	{
		get
		{
			return requiresDataBinding;
		}
		set
		{
			if (value && preRendered && IsBoundUsingDataSourceID && Page != null && !Page.IsCallback)
			{
				requiresDataBinding = true;
				EnsureDataBound();
			}
			else
			{
				requiresDataBinding = value;
			}
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	protected internal bool IsDataBindingAutomatic
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected virtual bool IsUsingModelBinders
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public event EventHandler DataBound
	{
		add
		{
			events.AddHandler(dataBoundEvent, value);
		}
		remove
		{
			events.RemoveHandler(dataBoundEvent, value);
		}
	}

	protected BaseDataBoundControl()
	{
	}

	internal BaseDataBoundControl(HtmlTextWriterTag tag)
		: base(tag)
	{
	}

	protected void ConfirmInitState()
	{
		initialized = true;
	}

	public override void DataBind()
	{
		PerformSelect();
	}

	protected virtual void EnsureDataBound()
	{
		if (RequiresDataBinding && IsBoundUsingDataSourceID)
		{
			DataBind();
		}
	}

	protected virtual void OnDataBound(EventArgs e)
	{
		if (events[dataBoundEvent] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnDataPropertyChanged()
	{
		if (Initialized)
		{
			RequiresDataBinding = true;
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		Page.PreLoad += OnPagePreLoad;
		if (!IsViewStateEnabled && Page != null && Page.IsPostBack)
		{
			RequiresDataBinding = true;
		}
	}

	protected virtual void OnPagePreLoad(object sender, EventArgs e)
	{
		ConfirmInitState();
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		preRendered = true;
		EnsureDataBound();
		base.OnPreRender(e);
	}

	internal Control FindDataSource()
	{
		Control namingContainer = NamingContainer;
		string dataSourceID = DataSourceID;
		while (namingContainer != null)
		{
			Control control = namingContainer.FindControl(dataSourceID);
			if (control != null)
			{
				return control;
			}
			namingContainer = namingContainer.NamingContainer;
		}
		return null;
	}

	protected abstract void PerformSelect();

	protected abstract void ValidateDataSource(object dataSource);
}
