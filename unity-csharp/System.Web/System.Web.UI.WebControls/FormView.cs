using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[SupportsEventValidation]
[Designer("System.Web.UI.Design.WebControls.FormViewDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlValueProperty("SelectedValue")]
[DefaultEvent("PageIndexChanging")]
[DataKeyProperty("DataKey")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class FormView : CompositeDataBoundControl, IDataItemContainer, INamingContainer, IPostBackEventHandler, IPostBackContainer, IDataBoundItemControl, IDataBoundControl, IRenderOuterTable
{
	private object dataItem;

	private Table table;

	private FormViewRow headerRow;

	private FormViewRow footerRow;

	private FormViewRow bottomPagerRow;

	private FormViewRow topPagerRow;

	private FormViewRow itemRow;

	private IOrderedDictionary currentEditRowKeys;

	private IOrderedDictionary currentEditNewValues;

	private IOrderedDictionary currentEditOldValues;

	private ITemplate pagerTemplate;

	private ITemplate emptyDataTemplate;

	private ITemplate headerTemplate;

	private ITemplate footerTemplate;

	private ITemplate editItemTemplate;

	private ITemplate insertItemTemplate;

	private ITemplate itemTemplate;

	private PropertyDescriptor[] cachedKeyProperties;

	private readonly string[] emptyKeys = new string[0];

	private readonly string unhandledEventExceptionMessage = "The FormView '{0}' fired event {1} which wasn't handled.";

	private PagerSettings pagerSettings;

	private TableItemStyle editRowStyle;

	private TableItemStyle insertRowStyle;

	private TableItemStyle emptyDataRowStyle;

	private TableItemStyle footerStyle;

	private TableItemStyle headerStyle;

	private TableItemStyle pagerStyle;

	private TableItemStyle rowStyle;

	private IOrderedDictionary _keyTable;

	private DataKey key;

	private DataKey oldEditValues;

	private bool renderOuterTable = true;

	private static readonly object PageIndexChangedEvent = new object();

	private static readonly object PageIndexChangingEvent = new object();

	private static readonly object ItemCommandEvent = new object();

	private static readonly object ItemCreatedEvent = new object();

	private static readonly object ItemDeletedEvent = new object();

	private static readonly object ItemDeletingEvent = new object();

	private static readonly object ItemInsertedEvent = new object();

	private static readonly object ItemInsertingEvent = new object();

	private static readonly object ModeChangingEvent = new object();

	private static readonly object ModeChangedEvent = new object();

	private static readonly object ItemUpdatedEvent = new object();

	private static readonly object ItemUpdatingEvent = new object();

	private int pageIndex;

	private FormViewMode currentMode;

	private bool hasCurrentMode;

	private int pageCount;

	private FormViewMode defaultMode;

	private string[] dataKeyNames;

	[WebCategory("Paging")]
	[DefaultValue(false)]
	public virtual bool AllowPaging
	{
		get
		{
			object obj = ViewState["AllowPaging"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["AllowPaging"] = value;
			RequireBinding();
		}
	}

	[UrlProperty]
	[WebCategory("Appearance")]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string BackImageUrl
	{
		get
		{
			if (ControlStyleCreated)
			{
				return ((TableStyle)ControlStyle).BackImageUrl;
			}
			return string.Empty;
		}
		set
		{
			((TableStyle)ControlStyle).BackImageUrl = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual FormViewRow BottomPagerRow
	{
		get
		{
			EnsureChildControls();
			return bottomPagerRow;
		}
	}

	[Localizable(true)]
	[WebCategory("Accessibility")]
	[DefaultValue("")]
	public virtual string Caption
	{
		get
		{
			object obj = ViewState["Caption"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["Caption"] = value;
			RequireBinding();
		}
	}

	[WebCategory("Accessibility")]
	[DefaultValue(TableCaptionAlign.NotSet)]
	public virtual TableCaptionAlign CaptionAlign
	{
		get
		{
			object obj = ViewState["CaptionAlign"];
			if (obj != null)
			{
				return (TableCaptionAlign)obj;
			}
			return TableCaptionAlign.NotSet;
		}
		set
		{
			ViewState["CaptionAlign"] = value;
			RequireBinding();
		}
	}

	[DefaultValue(-1)]
	[WebCategory("Layout")]
	public virtual int CellPadding
	{
		get
		{
			if (ControlStyleCreated)
			{
				return ((TableStyle)ControlStyle).CellPadding;
			}
			return -1;
		}
		set
		{
			((TableStyle)ControlStyle).CellPadding = value;
		}
	}

	[WebCategory("Layout")]
	[DefaultValue(0)]
	public virtual int CellSpacing
	{
		get
		{
			if (ControlStyleCreated)
			{
				return ((TableStyle)ControlStyle).CellSpacing;
			}
			return 0;
		}
		set
		{
			((TableStyle)ControlStyle).CellSpacing = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public FormViewMode CurrentMode
	{
		get
		{
			if (!hasCurrentMode)
			{
				return DefaultMode;
			}
			return currentMode;
		}
		private set
		{
			hasCurrentMode = true;
			currentMode = value;
		}
	}

	[DefaultValue(FormViewMode.ReadOnly)]
	[WebCategory("Behavior")]
	public virtual FormViewMode DefaultMode
	{
		get
		{
			return defaultMode;
		}
		set
		{
			defaultMode = value;
			RequireBinding();
		}
	}

	[WebCategory("Data")]
	[DefaultValue(null)]
	[TypeConverter(typeof(StringArrayConverter))]
	[Editor("System.Web.UI.Design.WebControls.DataFieldEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string[] DataKeyNames
	{
		get
		{
			if (dataKeyNames == null)
			{
				return emptyKeys;
			}
			return dataKeyNames;
		}
		set
		{
			dataKeyNames = value;
			RequireBinding();
		}
	}

	private IOrderedDictionary KeyTable
	{
		get
		{
			if (_keyTable == null)
			{
				_keyTable = new OrderedDictionary(DataKeyNames.Length);
			}
			return _keyTable;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual DataKey DataKey
	{
		get
		{
			if (key == null)
			{
				key = new DataKey(KeyTable);
			}
			return key;
		}
	}

	private DataKey OldEditValues
	{
		get
		{
			if (oldEditValues == null)
			{
				oldEditValues = new DataKey(new OrderedDictionary());
			}
			return oldEditValues;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[TemplateContainer(typeof(FormView), BindingDirection.TwoWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual ITemplate EditItemTemplate
	{
		get
		{
			return editItemTemplate;
		}
		set
		{
			editItemTemplate = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[WebCategory("Styles")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public TableItemStyle EditRowStyle
	{
		get
		{
			if (editRowStyle == null)
			{
				editRowStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					editRowStyle.TrackViewState();
				}
			}
			return editRowStyle;
		}
	}

	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[WebCategory("Styles")]
	public TableItemStyle EmptyDataRowStyle
	{
		get
		{
			if (emptyDataRowStyle == null)
			{
				emptyDataRowStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					emptyDataRowStyle.TrackViewState();
				}
			}
			return emptyDataRowStyle;
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(FormView), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate EmptyDataTemplate
	{
		get
		{
			return emptyDataTemplate;
		}
		set
		{
			emptyDataTemplate = value;
		}
	}

	[Localizable(true)]
	[WebCategory("Appearance")]
	[DefaultValue("")]
	public virtual string EmptyDataText
	{
		get
		{
			object obj = ViewState["EmptyDataText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["EmptyDataText"] = value;
			RequireBinding();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual FormViewRow FooterRow
	{
		get
		{
			EnsureChildControls();
			return footerRow;
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(FormView), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate FooterTemplate
	{
		get
		{
			return footerTemplate;
		}
		set
		{
			footerTemplate = value;
		}
	}

	[DefaultValue("")]
	[WebCategory("Appearance")]
	[Localizable(true)]
	public virtual string FooterText
	{
		get
		{
			object obj = ViewState["FooterText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["FooterText"] = value;
			RequireBinding();
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Styles")]
	public TableItemStyle FooterStyle
	{
		get
		{
			if (footerStyle == null)
			{
				footerStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					footerStyle.TrackViewState();
				}
			}
			return footerStyle;
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue(GridLines.None)]
	public virtual GridLines GridLines
	{
		get
		{
			if (ControlStyleCreated)
			{
				return ((TableStyle)ControlStyle).GridLines;
			}
			return GridLines.None;
		}
		set
		{
			((TableStyle)ControlStyle).GridLines = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual FormViewRow HeaderRow
	{
		get
		{
			EnsureChildControls();
			return headerRow;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[WebCategory("Styles")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public TableItemStyle HeaderStyle
	{
		get
		{
			if (headerStyle == null)
			{
				headerStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					headerStyle.TrackViewState();
				}
			}
			return headerStyle;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[TemplateContainer(typeof(FormView), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual ITemplate HeaderTemplate
	{
		get
		{
			return headerTemplate;
		}
		set
		{
			headerTemplate = value;
		}
	}

	[DefaultValue("")]
	[WebCategory("Appearance")]
	[Localizable(true)]
	public virtual string HeaderText
	{
		get
		{
			object obj = ViewState["HeaderText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["HeaderText"] = value;
			RequireBinding();
		}
	}

	[Category("Layout")]
	[DefaultValue(HorizontalAlign.NotSet)]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (ControlStyleCreated)
			{
				return ((TableStyle)ControlStyle).HorizontalAlign;
			}
			return HorizontalAlign.NotSet;
		}
		set
		{
			((TableStyle)ControlStyle).HorizontalAlign = value;
		}
	}

	[Browsable(false)]
	[TemplateContainer(typeof(FormView), BindingDirection.TwoWay)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual ITemplate InsertItemTemplate
	{
		get
		{
			return insertItemTemplate;
		}
		set
		{
			insertItemTemplate = value;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Styles")]
	public TableItemStyle InsertRowStyle
	{
		get
		{
			if (insertRowStyle == null)
			{
				insertRowStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					insertRowStyle.TrackViewState();
				}
			}
			return insertRowStyle;
		}
	}

	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[TemplateContainer(typeof(FormView), BindingDirection.TwoWay)]
	public virtual ITemplate ItemTemplate
	{
		get
		{
			return itemTemplate;
		}
		set
		{
			itemTemplate = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual int PageCount
	{
		get
		{
			return pageCount;
		}
		private set
		{
			pageCount = value;
		}
	}

	[DefaultValue(0)]
	[WebCategory("Paging")]
	[Bindable(true, BindingDirection.OneWay)]
	public virtual int PageIndex
	{
		get
		{
			return pageIndex;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("PageIndex must be non-negative");
			}
			if (pageIndex != value && value != -1)
			{
				pageIndex = value;
				RequireBinding();
			}
		}
	}

	[WebCategory("Paging")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual PagerSettings PagerSettings
	{
		get
		{
			if (pagerSettings == null)
			{
				pagerSettings = new PagerSettings(this);
				if (IsTrackingViewState)
				{
					((IStateManager)pagerSettings).TrackViewState();
				}
			}
			return pagerSettings;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[WebCategory("Styles")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public TableItemStyle PagerStyle
	{
		get
		{
			if (pagerStyle == null)
			{
				pagerStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					pagerStyle.TrackViewState();
				}
			}
			return pagerStyle;
		}
	}

	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(FormView))]
	[DefaultValue(null)]
	public virtual ITemplate PagerTemplate
	{
		get
		{
			return pagerTemplate;
		}
		set
		{
			pagerTemplate = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual FormViewRow Row
	{
		get
		{
			EnsureChildControls();
			return itemRow;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Styles")]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TableItemStyle RowStyle
	{
		get
		{
			if (rowStyle == null)
			{
				rowStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					rowStyle.TrackViewState();
				}
			}
			return rowStyle;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object SelectedValue => DataKey.Value;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual FormViewRow TopPagerRow
	{
		get
		{
			EnsureChildControls();
			return topPagerRow;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual object DataItem => dataItem;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int DataItemCount => PageCount;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual int DataItemIndex => PageIndex;

	int IDataItemContainer.DataItemIndex => DataItemIndex;

	int IDataItemContainer.DisplayIndex => PageIndex;

	[MonoTODO("Make use of it in the code")]
	[DefaultValue(true)]
	public virtual bool EnableModelValidation { get; set; }

	[DefaultValue(true)]
	public virtual bool RenderOuterTable
	{
		get
		{
			return renderOuterTable;
		}
		set
		{
			renderOuterTable = value;
		}
	}

	DataBoundControlMode IDataBoundItemControl.Mode => CurrentMode switch
	{
		FormViewMode.ReadOnly => DataBoundControlMode.ReadOnly, 
		FormViewMode.Edit => DataBoundControlMode.Edit, 
		FormViewMode.Insert => DataBoundControlMode.Insert, 
		_ => throw new InvalidOperationException("Unsupported mode value."), 
	};

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Table;

	public new virtual string DeleteMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public new virtual string InsertMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public new virtual string UpdateMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event EventHandler PageIndexChanged
	{
		add
		{
			Events.AddHandler(PageIndexChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(PageIndexChangedEvent, value);
		}
	}

	public event FormViewPageEventHandler PageIndexChanging
	{
		add
		{
			Events.AddHandler(PageIndexChangingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(PageIndexChangingEvent, value);
		}
	}

	public event FormViewCommandEventHandler ItemCommand
	{
		add
		{
			Events.AddHandler(ItemCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemCommandEvent, value);
		}
	}

	public event EventHandler ItemCreated
	{
		add
		{
			Events.AddHandler(ItemCreatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemCreatedEvent, value);
		}
	}

	public event FormViewDeletedEventHandler ItemDeleted
	{
		add
		{
			Events.AddHandler(ItemDeletedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemDeletedEvent, value);
		}
	}

	public event FormViewDeleteEventHandler ItemDeleting
	{
		add
		{
			Events.AddHandler(ItemDeletingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemDeletingEvent, value);
		}
	}

	public event FormViewInsertedEventHandler ItemInserted
	{
		add
		{
			Events.AddHandler(ItemInsertedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemInsertedEvent, value);
		}
	}

	public event FormViewInsertEventHandler ItemInserting
	{
		add
		{
			Events.AddHandler(ItemInsertingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemInsertingEvent, value);
		}
	}

	public event FormViewModeEventHandler ModeChanging
	{
		add
		{
			Events.AddHandler(ModeChangingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ModeChangingEvent, value);
		}
	}

	public event EventHandler ModeChanged
	{
		add
		{
			Events.AddHandler(ModeChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ModeChangedEvent, value);
		}
	}

	public event FormViewUpdatedEventHandler ItemUpdated
	{
		add
		{
			Events.AddHandler(ItemUpdatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemUpdatedEvent, value);
		}
	}

	public event FormViewUpdateEventHandler ItemUpdating
	{
		add
		{
			Events.AddHandler(ItemUpdatingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemUpdatingEvent, value);
		}
	}

	protected virtual void OnPageIndexChanged(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[PageIndexChangedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnPageIndexChanging(FormViewPageEventArgs e)
	{
		if (Events != null)
		{
			FormViewPageEventHandler formViewPageEventHandler = (FormViewPageEventHandler)Events[PageIndexChangingEvent];
			if (formViewPageEventHandler != null)
			{
				formViewPageEventHandler(this, e);
				return;
			}
		}
		if (!IsBoundUsingDataSourceID)
		{
			throw new HttpException(string.Format(unhandledEventExceptionMessage, ID, "PageIndexChanging"));
		}
	}

	protected virtual void OnItemCommand(FormViewCommandEventArgs e)
	{
		if (Events != null)
		{
			((FormViewCommandEventHandler)Events[ItemCommandEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnItemCreated(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[ItemCreatedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnItemDeleted(FormViewDeletedEventArgs e)
	{
		if (Events != null)
		{
			((FormViewDeletedEventHandler)Events[ItemDeletedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnItemInserted(FormViewInsertedEventArgs e)
	{
		if (Events != null)
		{
			((FormViewInsertedEventHandler)Events[ItemInsertedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnItemInserting(FormViewInsertEventArgs e)
	{
		if (Events != null)
		{
			FormViewInsertEventHandler formViewInsertEventHandler = (FormViewInsertEventHandler)Events[ItemInsertingEvent];
			if (formViewInsertEventHandler != null)
			{
				formViewInsertEventHandler(this, e);
				return;
			}
		}
		if (!IsBoundUsingDataSourceID)
		{
			throw new HttpException(string.Format(unhandledEventExceptionMessage, ID, "ItemInserting"));
		}
	}

	protected virtual void OnItemDeleting(FormViewDeleteEventArgs e)
	{
		if (Events != null)
		{
			FormViewDeleteEventHandler formViewDeleteEventHandler = (FormViewDeleteEventHandler)Events[ItemDeletingEvent];
			if (formViewDeleteEventHandler != null)
			{
				formViewDeleteEventHandler(this, e);
				return;
			}
		}
		if (!IsBoundUsingDataSourceID)
		{
			throw new HttpException(string.Format(unhandledEventExceptionMessage, ID, "ItemDeleting"));
		}
	}

	protected virtual void OnModeChanged(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[ModeChangedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnModeChanging(FormViewModeEventArgs e)
	{
		if (Events != null)
		{
			FormViewModeEventHandler formViewModeEventHandler = (FormViewModeEventHandler)Events[ModeChangingEvent];
			if (formViewModeEventHandler != null)
			{
				formViewModeEventHandler(this, e);
				return;
			}
		}
		if (!IsBoundUsingDataSourceID)
		{
			throw new HttpException(string.Format(unhandledEventExceptionMessage, ID, "ModeChanging"));
		}
	}

	protected virtual void OnItemUpdated(FormViewUpdatedEventArgs e)
	{
		if (Events != null)
		{
			((FormViewUpdatedEventHandler)Events[ItemUpdatedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnItemUpdating(FormViewUpdateEventArgs e)
	{
		if (Events != null)
		{
			FormViewUpdateEventHandler formViewUpdateEventHandler = (FormViewUpdateEventHandler)Events[ItemUpdatingEvent];
			if (formViewUpdateEventHandler != null)
			{
				formViewUpdateEventHandler(this, e);
				return;
			}
		}
		if (!IsBoundUsingDataSourceID)
		{
			throw new HttpException(string.Format(unhandledEventExceptionMessage, ID, "ItemUpdating"));
		}
	}

	protected internal virtual string ModifiedOuterTableStylePropertyName()
	{
		if (BackImageUrl != string.Empty)
		{
			return "BackImageUrl";
		}
		if (CellPadding != -1)
		{
			return "CellPadding";
		}
		if (CellSpacing != 0)
		{
			return "CellSpacing";
		}
		if (GridLines != GridLines.None)
		{
			return "GridLines";
		}
		if (HorizontalAlign != HorizontalAlign.NotSet)
		{
			return "HorizontalAlign";
		}
		if (ControlStyle.CheckBit(65024))
		{
			return "Font";
		}
		return string.Empty;
	}

	internal override string InlinePropertiesSet()
	{
		string text = base.InlinePropertiesSet();
		string text2 = ModifiedOuterTableStylePropertyName();
		if (string.IsNullOrEmpty(text2))
		{
			return text;
		}
		if (string.IsNullOrEmpty(text))
		{
			return text2;
		}
		return text + ", " + text2;
	}

	public virtual bool IsBindableType(Type type)
	{
		if (!type.IsPrimitive && !(type == typeof(string)) && !(type == typeof(DateTime)) && !(type == typeof(Guid)))
		{
			return type == typeof(decimal);
		}
		return true;
	}

	protected override DataSourceSelectArguments CreateDataSourceSelectArguments()
	{
		DataSourceSelectArguments dataSourceSelectArguments = new DataSourceSelectArguments();
		DataSourceView data = GetData();
		if (AllowPaging && data.CanPage)
		{
			dataSourceSelectArguments.StartRowIndex = PageIndex;
			if (data.CanRetrieveTotalRowCount)
			{
				dataSourceSelectArguments.RetrieveTotalRowCount = true;
				dataSourceSelectArguments.MaximumRows = 1;
			}
			else
			{
				dataSourceSelectArguments.MaximumRows = -1;
			}
		}
		return dataSourceSelectArguments;
	}

	protected virtual FormViewRow CreateRow(int itemIndex, DataControlRowType rowType, DataControlRowState rowState)
	{
		if (rowType == DataControlRowType.Pager)
		{
			return new FormViewPagerRow(itemIndex, rowType, rowState);
		}
		return new FormViewRow(itemIndex, rowType, rowState);
	}

	private void RequireBinding()
	{
		if (Initialized)
		{
			RequiresDataBinding = true;
		}
	}

	protected virtual Table CreateTable()
	{
		return new ContainedTable(this);
	}

	protected override void EnsureDataBound()
	{
		if (CurrentMode == FormViewMode.Insert)
		{
			if (RequiresDataBinding)
			{
				OnDataBinding(EventArgs.Empty);
				RequiresDataBinding = false;
				InternalPerformDataBinding(null);
				MarkAsDataBound();
				OnDataBound(EventArgs.Empty);
			}
		}
		else
		{
			base.EnsureDataBound();
		}
	}

	protected override Style CreateControlStyle()
	{
		return new TableStyle(ViewState)
		{
			CellSpacing = 0
		};
	}

	protected override int CreateChildControls(IEnumerable dataSource, bool dataBinding)
	{
		PagedDataSource pagedDataSource = new PagedDataSource();
		pagedDataSource.DataSource = ((CurrentMode != FormViewMode.Insert) ? dataSource : null);
		pagedDataSource.AllowPaging = AllowPaging;
		pagedDataSource.PageSize = 1;
		pagedDataSource.CurrentPageIndex = PageIndex;
		if (dataBinding && CurrentMode != FormViewMode.Insert)
		{
			DataSourceView data = GetData();
			if (data != null && data.CanPage)
			{
				pagedDataSource.AllowServerPaging = true;
				if (SelectArguments.RetrieveTotalRowCount)
				{
					pagedDataSource.VirtualCount = SelectArguments.TotalRowCount;
				}
			}
		}
		PagerSettings pagerSettings = PagerSettings;
		bool flag = AllowPaging && pagerSettings.Visible && pagedDataSource.PageCount > 1;
		Controls.Clear();
		table = CreateTable();
		Controls.Add(table);
		headerRow = null;
		footerRow = null;
		topPagerRow = null;
		bottomPagerRow = null;
		if (AllowPaging)
		{
			PageCount = pagedDataSource.DataSourceCount;
			if (PageIndex >= PageCount && PageCount > 0)
			{
				int num = (pagedDataSource.CurrentPageIndex = PageCount - 1);
				pageIndex = num;
			}
			if (pagedDataSource.DataSource != null)
			{
				IEnumerator enumerator = pagedDataSource.GetEnumerator();
				if (enumerator.MoveNext())
				{
					dataItem = enumerator.Current;
				}
			}
		}
		else
		{
			int num3 = 0;
			object obj = null;
			if (pagedDataSource.DataSource != null)
			{
				IEnumerator enumerator2 = pagedDataSource.GetEnumerator();
				while (enumerator2.MoveNext())
				{
					obj = enumerator2.Current;
					if (num3 == PageIndex)
					{
						dataItem = enumerator2.Current;
					}
					num3++;
				}
			}
			PageCount = num3;
			if (PageIndex >= PageCount && PageCount > 0)
			{
				pageIndex = PageCount - 1;
				dataItem = obj;
			}
		}
		bool flag2 = PageCount == 0 && CurrentMode != FormViewMode.Insert;
		if (!flag2)
		{
			headerRow = CreateRow(-1, DataControlRowType.Header, DataControlRowState.Normal);
			InitializeRow(headerRow);
			table.Rows.Add(headerRow);
		}
		if ((flag && pagerSettings.Position == PagerPosition.Top) || pagerSettings.Position == PagerPosition.TopAndBottom)
		{
			topPagerRow = CreateRow(-1, DataControlRowType.Pager, DataControlRowState.Normal);
			InitializePager(topPagerRow, pagedDataSource);
			table.Rows.Add(topPagerRow);
		}
		if (PageCount > 0)
		{
			DataControlRowState rowState = GetRowState();
			itemRow = CreateRow(0, DataControlRowType.DataRow, rowState);
			InitializeRow(itemRow);
			table.Rows.Add(itemRow);
		}
		else
		{
			switch (CurrentMode)
			{
			case FormViewMode.Edit:
				itemRow = CreateRow(-1, DataControlRowType.EmptyDataRow, DataControlRowState.Edit);
				break;
			case FormViewMode.Insert:
				itemRow = CreateRow(-1, DataControlRowType.DataRow, DataControlRowState.Insert);
				break;
			default:
				itemRow = CreateRow(-1, DataControlRowType.EmptyDataRow, DataControlRowState.Normal);
				break;
			}
			InitializeRow(itemRow);
			table.Rows.Add(itemRow);
		}
		if (!flag2)
		{
			footerRow = CreateRow(-1, DataControlRowType.Footer, DataControlRowState.Normal);
			InitializeRow(footerRow);
			table.Rows.Add(footerRow);
		}
		if ((flag && pagerSettings.Position == PagerPosition.Bottom) || pagerSettings.Position == PagerPosition.TopAndBottom)
		{
			bottomPagerRow = CreateRow(0, DataControlRowType.Pager, DataControlRowState.Normal);
			InitializePager(bottomPagerRow, pagedDataSource);
			table.Rows.Add(bottomPagerRow);
		}
		OnItemCreated(EventArgs.Empty);
		if (dataBinding)
		{
			DataBind(raiseOnDataBinding: false);
		}
		return PageCount;
	}

	private DataControlRowState GetRowState()
	{
		DataControlRowState dataControlRowState = DataControlRowState.Normal;
		if (CurrentMode == FormViewMode.Edit)
		{
			dataControlRowState |= DataControlRowState.Edit;
		}
		else if (CurrentMode == FormViewMode.Insert)
		{
			dataControlRowState |= DataControlRowState.Insert;
		}
		return dataControlRowState;
	}

	protected virtual void InitializePager(FormViewRow row, PagedDataSource pagedDataSource)
	{
		TableCell tableCell = new TableCell();
		tableCell.ColumnSpan = 2;
		if (pagerTemplate != null)
		{
			pagerTemplate.InstantiateIn(tableCell);
		}
		else
		{
			tableCell.Controls.Add(PagerSettings.CreatePagerControl(pagedDataSource.CurrentPageIndex, pagedDataSource.PageCount));
		}
		row.Cells.Add(tableCell);
	}

	protected virtual void InitializeRow(FormViewRow row)
	{
		TableCell tableCell = new TableCell();
		if (row.RowType == DataControlRowType.DataRow)
		{
			if ((row.RowState & DataControlRowState.Edit) != 0)
			{
				if (editItemTemplate != null)
				{
					editItemTemplate.InstantiateIn(tableCell);
				}
				else
				{
					row.Visible = false;
				}
			}
			else if ((row.RowState & DataControlRowState.Insert) != 0)
			{
				if (insertItemTemplate != null)
				{
					insertItemTemplate.InstantiateIn(tableCell);
				}
				else
				{
					row.Visible = false;
				}
			}
			else if (itemTemplate != null)
			{
				itemTemplate.InstantiateIn(tableCell);
			}
			else
			{
				row.Visible = false;
			}
		}
		else if (row.RowType == DataControlRowType.EmptyDataRow)
		{
			if (emptyDataTemplate != null)
			{
				emptyDataTemplate.InstantiateIn(tableCell);
			}
			else if (!string.IsNullOrEmpty(EmptyDataText))
			{
				tableCell.Text = EmptyDataText;
			}
			else
			{
				row.Visible = false;
			}
		}
		else if (row.RowType == DataControlRowType.Footer)
		{
			if (footerTemplate != null)
			{
				footerTemplate.InstantiateIn(tableCell);
			}
			else if (!string.IsNullOrEmpty(FooterText))
			{
				tableCell.Text = FooterText;
			}
			else
			{
				row.Visible = false;
			}
		}
		else if (row.RowType == DataControlRowType.Header)
		{
			if (headerTemplate != null)
			{
				headerTemplate.InstantiateIn(tableCell);
			}
			else if (!string.IsNullOrEmpty(HeaderText))
			{
				tableCell.Text = HeaderText;
			}
			else
			{
				row.Visible = false;
			}
		}
		tableCell.ColumnSpan = 2;
		row.Cells.Add(tableCell);
		row.RenderJustCellContents = !RenderOuterTable;
	}

	private void FillRowDataKey(object dataItem)
	{
		KeyTable.Clear();
		if (cachedKeyProperties == null)
		{
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(dataItem);
			cachedKeyProperties = new PropertyDescriptor[DataKeyNames.Length];
			for (int i = 0; i < DataKeyNames.Length; i++)
			{
				PropertyDescriptor propertyDescriptor = properties.Find(DataKeyNames[i], ignoreCase: true);
				if (propertyDescriptor == null)
				{
					throw new InvalidOperationException("Property '" + DataKeyNames[i] + "' not found in object of type " + dataItem.GetType());
				}
				cachedKeyProperties[i] = propertyDescriptor;
			}
		}
		PropertyDescriptor[] array = cachedKeyProperties;
		foreach (PropertyDescriptor propertyDescriptor2 in array)
		{
			KeyTable[propertyDescriptor2.Name] = propertyDescriptor2.GetValue(dataItem);
		}
	}

	private IOrderedDictionary GetRowValues(bool includePrimaryKey)
	{
		OrderedDictionary orderedDictionary = new OrderedDictionary();
		ExtractRowValues(orderedDictionary, includePrimaryKey);
		return orderedDictionary;
	}

	protected virtual void ExtractRowValues(IOrderedDictionary fieldValues, bool includeKeys)
	{
		FormViewRow row = Row;
		if (row == null)
		{
			return;
		}
		DataControlRowState rowState = row.RowState;
		IBindableTemplate bindableTemplate;
		if ((rowState & DataControlRowState.Insert) != 0)
		{
			bindableTemplate = insertItemTemplate as IBindableTemplate;
		}
		else
		{
			if ((rowState & DataControlRowState.Edit) == 0)
			{
				return;
			}
			bindableTemplate = editItemTemplate as IBindableTemplate;
		}
		if (bindableTemplate == null)
		{
			return;
		}
		IOrderedDictionary orderedDictionary = bindableTemplate.ExtractValues(row.Cells[0]);
		if (orderedDictionary == null)
		{
			return;
		}
		foreach (DictionaryEntry item in orderedDictionary)
		{
			if (includeKeys || Array.IndexOf(DataKeyNames, item.Key) == -1)
			{
				fieldValues[item.Key] = item.Value;
			}
		}
	}

	public sealed override void DataBind()
	{
		cachedKeyProperties = null;
		base.DataBind();
		if (pageCount > 0)
		{
			if (CurrentMode == FormViewMode.Edit)
			{
				oldEditValues = new DataKey(GetRowValues(includePrimaryKey: true));
			}
			FillRowDataKey(dataItem);
			key = new DataKey(KeyTable);
		}
	}

	protected internal override void PerformDataBinding(IEnumerable data)
	{
		base.PerformDataBinding(data);
	}

	protected internal virtual void PrepareControlHierarchy()
	{
		if (table == null)
		{
			return;
		}
		table.Caption = Caption;
		table.CaptionAlign = CaptionAlign;
		foreach (FormViewRow row in table.Rows)
		{
			switch (row.RowType)
			{
			case DataControlRowType.Header:
				if (headerStyle != null && !headerStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(headerStyle);
				}
				break;
			case DataControlRowType.Footer:
				if (footerStyle != null && !footerStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(footerStyle);
				}
				break;
			case DataControlRowType.Pager:
				if (pagerStyle != null && !pagerStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(pagerStyle);
				}
				break;
			case DataControlRowType.EmptyDataRow:
				if (emptyDataRowStyle != null && !emptyDataRowStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(emptyDataRowStyle);
				}
				break;
			case DataControlRowType.DataRow:
				if (rowStyle != null && !rowStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(rowStyle);
				}
				if ((row.RowState & (DataControlRowState.Edit | DataControlRowState.Insert)) != 0 && editRowStyle != null && !editRowStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(editRowStyle);
				}
				if ((row.RowState & DataControlRowState.Insert) != 0 && insertRowStyle != null && !insertRowStyle.IsEmpty)
				{
					row.ControlStyle.CopyFrom(insertRowStyle);
				}
				break;
			}
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page.RegisterRequiresControlState(this);
		base.OnInit(e);
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (e is FormViewCommandEventArgs e2)
		{
			bool causesValidation = false;
			if (e2.CommandSource is IButtonControl { CausesValidation: not false } buttonControl)
			{
				Page.Validate(buttonControl.ValidationGroup);
				causesValidation = true;
			}
			ProcessCommand(e2, causesValidation);
			return true;
		}
		return base.OnBubbleEvent(source, e);
	}

	private void ProcessCommand(FormViewCommandEventArgs args, bool causesValidation)
	{
		OnItemCommand(args);
		ProcessEvent(args.CommandName, args.CommandArgument as string, causesValidation);
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		int num = eventArgument.IndexOf('$');
		CommandEventArgs originalArgs = ((num == -1) ? new CommandEventArgs(eventArgument, null) : new CommandEventArgs(eventArgument.Substring(0, num), eventArgument.Substring(num + 1)));
		ProcessCommand(new FormViewCommandEventArgs(this, originalArgs), causesValidation: false);
	}

	private void ProcessEvent(string eventName, string param, bool causesValidation)
	{
		switch (eventName)
		{
		case "Page":
		{
			int num = -1;
			switch (param)
			{
			case "First":
				num = 0;
				break;
			case "Last":
				num = PageCount - 1;
				break;
			case "Next":
				num = PageIndex + 1;
				break;
			case "Prev":
				num = PageIndex - 1;
				break;
			default:
			{
				int result = 0;
				int.TryParse(param, out result);
				num = result - 1;
				break;
			}
			}
			SetPageIndex(num);
			break;
		}
		case "First":
			SetPageIndex(0);
			break;
		case "Last":
			SetPageIndex(PageCount - 1);
			break;
		case "Next":
			if (PageIndex < PageCount - 1)
			{
				SetPageIndex(PageIndex + 1);
			}
			break;
		case "Prev":
			if (PageIndex > 0)
			{
				SetPageIndex(PageIndex - 1);
			}
			break;
		case "Edit":
			ProcessChangeMode(FormViewMode.Edit, cancelingEdit: false);
			break;
		case "New":
			ProcessChangeMode(FormViewMode.Insert, cancelingEdit: false);
			break;
		case "Update":
			UpdateItem(param, causesValidation);
			break;
		case "Cancel":
			CancelEdit();
			break;
		case "Delete":
			DeleteItem();
			break;
		case "Insert":
			InsertItem(causesValidation);
			break;
		}
	}

	public void SetPageIndex(int index)
	{
		FormViewPageEventArgs e = new FormViewPageEventArgs(index);
		OnPageIndexChanging(e);
		if (!e.Cancel && IsBoundUsingDataSourceID)
		{
			int newPageIndex = e.NewPageIndex;
			if (newPageIndex >= 0 && newPageIndex < PageCount)
			{
				EndRowEdit(switchToDefaultMode: false, cancelingEdit: false);
				PageIndex = newPageIndex;
				OnPageIndexChanged(EventArgs.Empty);
			}
		}
	}

	public void ChangeMode(FormViewMode newMode)
	{
		if (CurrentMode != newMode)
		{
			CurrentMode = newMode;
			RequireBinding();
		}
	}

	private void ProcessChangeMode(FormViewMode newMode, bool cancelingEdit)
	{
		FormViewModeEventArgs e = new FormViewModeEventArgs(newMode, cancelingEdit);
		OnModeChanging(e);
		if (!e.Cancel && IsBoundUsingDataSourceID)
		{
			ChangeMode(e.NewMode);
			OnModeChanged(EventArgs.Empty);
		}
	}

	private void CancelEdit()
	{
		EndRowEdit(switchToDefaultMode: true, cancelingEdit: true);
	}

	public virtual void UpdateItem(bool causesValidation)
	{
		UpdateItem(null, causesValidation);
	}

	private void UpdateItem(string param, bool causesValidation)
	{
		if (!causesValidation || Page == null || Page.IsValid)
		{
			if (currentMode != FormViewMode.Edit)
			{
				throw new HttpException("Must be in Edit mode");
			}
			currentEditOldValues = OldEditValues.Values;
			currentEditRowKeys = DataKey.Values;
			currentEditNewValues = GetRowValues(includePrimaryKey: true);
			FormViewUpdateEventArgs e = new FormViewUpdateEventArgs(param, currentEditRowKeys, currentEditOldValues, currentEditNewValues);
			OnItemUpdating(e);
			if (!e.Cancel && IsBoundUsingDataSourceID)
			{
				(GetData() ?? throw new HttpException("The DataSourceView associated to data bound control was null")).Update(currentEditRowKeys, currentEditNewValues, currentEditOldValues, UpdateCallback);
			}
		}
	}

	private bool UpdateCallback(int recordsAffected, Exception exception)
	{
		FormViewUpdatedEventArgs e = new FormViewUpdatedEventArgs(recordsAffected, exception, currentEditRowKeys, currentEditOldValues, currentEditNewValues);
		OnItemUpdated(e);
		if (!e.KeepInEditMode)
		{
			EndRowEdit(switchToDefaultMode: true, cancelingEdit: false);
		}
		return e.ExceptionHandled;
	}

	public virtual void InsertItem(bool causesValidation)
	{
		InsertItem(null, causesValidation);
	}

	private void InsertItem(string param, bool causesValidation)
	{
		if (!causesValidation || Page == null || Page.IsValid)
		{
			if (currentMode != FormViewMode.Insert)
			{
				throw new HttpException("Must be in Insert mode");
			}
			currentEditNewValues = GetRowValues(includePrimaryKey: true);
			FormViewInsertEventArgs e = new FormViewInsertEventArgs(param, currentEditNewValues);
			OnItemInserting(e);
			if (!e.Cancel && IsBoundUsingDataSourceID)
			{
				(GetData() ?? throw new HttpException("The DataSourceView associated to data bound control was null")).Insert(currentEditNewValues, InsertCallback);
			}
		}
	}

	private bool InsertCallback(int recordsAffected, Exception exception)
	{
		FormViewInsertedEventArgs e = new FormViewInsertedEventArgs(recordsAffected, exception, currentEditNewValues);
		OnItemInserted(e);
		if (!e.KeepInInsertMode)
		{
			EndRowEdit(switchToDefaultMode: true, cancelingEdit: false);
		}
		return e.ExceptionHandled;
	}

	public virtual void DeleteItem()
	{
		currentEditRowKeys = DataKey.Values;
		currentEditNewValues = GetRowValues(includePrimaryKey: true);
		FormViewDeleteEventArgs e = new FormViewDeleteEventArgs(PageIndex, currentEditRowKeys, currentEditNewValues);
		OnItemDeleting(e);
		if (!e.Cancel && IsBoundUsingDataSourceID)
		{
			if (PageIndex > 0 && PageIndex == PageCount - 1)
			{
				PageIndex--;
			}
			RequireBinding();
			DataSourceView data = GetData();
			if (data != null)
			{
				data.Delete(currentEditRowKeys, currentEditNewValues, DeleteCallback);
				return;
			}
			FormViewDeletedEventArgs e2 = new FormViewDeletedEventArgs(0, null, currentEditRowKeys, currentEditNewValues);
			OnItemDeleted(e2);
		}
	}

	private bool DeleteCallback(int recordsAffected, Exception exception)
	{
		FormViewDeletedEventArgs e = new FormViewDeletedEventArgs(recordsAffected, exception, currentEditRowKeys, currentEditNewValues);
		OnItemDeleted(e);
		return e.ExceptionHandled;
	}

	private void EndRowEdit(bool switchToDefaultMode, bool cancelingEdit)
	{
		if (switchToDefaultMode)
		{
			ProcessChangeMode(DefaultMode, cancelingEdit);
		}
		oldEditValues = new DataKey(new OrderedDictionary());
		currentEditRowKeys = null;
		currentEditOldValues = null;
		currentEditNewValues = null;
		RequireBinding();
	}

	protected internal override void LoadControlState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			base.LoadControlState(array[0]);
			pageIndex = (int)array[1];
			pageCount = (int)array[2];
			CurrentMode = (FormViewMode)array[3];
			defaultMode = (FormViewMode)array[4];
			dataKeyNames = (string[])array[5];
			if (array[6] != null)
			{
				((IStateManager)DataKey).LoadViewState(array[6]);
			}
			if (array[7] != null)
			{
				((IStateManager)OldEditValues).LoadViewState(array[7]);
			}
		}
	}

	protected internal override object SaveControlState()
	{
		object obj = base.SaveControlState();
		return new object[8]
		{
			obj,
			pageIndex,
			pageCount,
			CurrentMode,
			defaultMode,
			dataKeyNames,
			(key == null) ? null : ((IStateManager)key).SaveViewState(),
			(oldEditValues == null) ? null : ((IStateManager)oldEditValues).SaveViewState()
		};
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (pagerSettings != null)
		{
			((IStateManager)pagerSettings).TrackViewState();
		}
		if (footerStyle != null)
		{
			((IStateManager)footerStyle).TrackViewState();
		}
		if (headerStyle != null)
		{
			((IStateManager)headerStyle).TrackViewState();
		}
		if (pagerStyle != null)
		{
			((IStateManager)pagerStyle).TrackViewState();
		}
		if (rowStyle != null)
		{
			((IStateManager)rowStyle).TrackViewState();
		}
		if (editRowStyle != null)
		{
			((IStateManager)editRowStyle).TrackViewState();
		}
		if (insertRowStyle != null)
		{
			((IStateManager)insertRowStyle).TrackViewState();
		}
		if (emptyDataRowStyle != null)
		{
			((IStateManager)emptyDataRowStyle).TrackViewState();
		}
	}

	protected override object SaveViewState()
	{
		object[] array = new object[10]
		{
			base.SaveViewState(),
			(pagerSettings == null) ? null : ((IStateManager)pagerSettings).SaveViewState(),
			(footerStyle == null) ? null : ((IStateManager)footerStyle).SaveViewState(),
			(headerStyle == null) ? null : ((IStateManager)headerStyle).SaveViewState(),
			(pagerStyle == null) ? null : ((IStateManager)pagerStyle).SaveViewState(),
			(rowStyle == null) ? null : ((IStateManager)rowStyle).SaveViewState(),
			(insertRowStyle == null) ? null : ((IStateManager)insertRowStyle).SaveViewState(),
			(editRowStyle == null) ? null : ((IStateManager)editRowStyle).SaveViewState(),
			(emptyDataRowStyle == null) ? null : ((IStateManager)emptyDataRowStyle).SaveViewState(),
			null
		};
		for (int num = array.Length - 1; num >= 0; num--)
		{
			if (array[num] != null)
			{
				return array;
			}
		}
		return null;
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			base.LoadViewState(null);
			return;
		}
		object[] array = (object[])savedState;
		base.LoadViewState(array[0]);
		if (array[1] != null)
		{
			((IStateManager)PagerSettings).LoadViewState(array[1]);
		}
		if (array[2] != null)
		{
			((IStateManager)FooterStyle).LoadViewState(array[2]);
		}
		if (array[3] != null)
		{
			((IStateManager)HeaderStyle).LoadViewState(array[3]);
		}
		if (array[4] != null)
		{
			((IStateManager)PagerStyle).LoadViewState(array[4]);
		}
		if (array[5] != null)
		{
			((IStateManager)RowStyle).LoadViewState(array[5]);
		}
		if (array[6] != null)
		{
			((IStateManager)InsertRowStyle).LoadViewState(array[6]);
		}
		if (array[7] != null)
		{
			((IStateManager)EditRowStyle).LoadViewState(array[7]);
		}
		if (array[8] != null)
		{
			((IStateManager)EmptyDataRowStyle).LoadViewState(array[8]);
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		VerifyInlinePropertiesNotSet();
		if (RenderOuterTable)
		{
			PrepareControlHierarchy();
			if (table != null)
			{
				table.Render(writer);
			}
		}
		else if (table != null)
		{
			table.RenderChildren(writer);
		}
	}

	PostBackOptions IPostBackContainer.GetPostBackOptions(IButtonControl control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		if (control.CausesValidation)
		{
			throw new InvalidOperationException("A button that causes validation in FormView '" + ID + "' is attempting to use the container GridView as the post back target.  The button should either turn off validation or use itself as the post back container.");
		}
		return new PostBackOptions(this)
		{
			Argument = control.CommandName + "$" + control.CommandArgument,
			RequiresJavaScriptProtocol = true
		};
	}

	[SpecialName]
	string IDataBoundControl.get_DataMember()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SpecialName]
	void IDataBoundControl.set_DataMember(string value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	object IDataBoundControl.get_DataSource()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SpecialName]
	void IDataBoundControl.set_DataSource(object value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	string IDataBoundControl.get_DataSourceID()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SpecialName]
	void IDataBoundControl.set_DataSourceID(string value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	IDataSource IDataBoundControl.get_DataSourceObject()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
