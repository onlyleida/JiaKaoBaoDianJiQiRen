using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[DefaultProperty("HeaderText")]
[TypeConverter(typeof(ExpandableObjectConverter))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class DataControlField : IStateManager, IDataSourceViewSchemaAccessor
{
	private static readonly object fieldChangedEvent = new object();

	private bool tracking;

	private StateBag viewState;

	private Control control;

	private Style controlStyle;

	private TableItemStyle footerStyle;

	private TableItemStyle headerStyle;

	private TableItemStyle itemStyle;

	private bool sortingEnabled;

	private EventHandlerList events = new EventHandlerList();

	protected StateBag ViewState => viewState;

	internal bool ControlStyleCreated => controlStyle != null;

	internal bool HeaderStyleCreated => headerStyle != null;

	internal bool FooterStyleCreated => footerStyle != null;

	internal bool ItemStyleCreated => itemStyle != null;

	[WebCategory("Accessibility")]
	[Localizable(true)]
	[DefaultValue("")]
	[MonoTODO("Render this")]
	public virtual string AccessibleHeaderText
	{
		get
		{
			object obj = viewState["accessibleHeaderText"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["accessibleHeaderText"] = value;
			OnFieldChanged();
		}
	}

	protected Control Control => control;

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	[WebCategory("Styles")]
	public Style ControlStyle
	{
		get
		{
			if (controlStyle == null)
			{
				controlStyle = new Style();
				if (IsTrackingViewState)
				{
					controlStyle.TrackViewState();
				}
			}
			return controlStyle;
		}
	}

	protected bool DesignMode
	{
		get
		{
			if (control == null || control.Site == null)
			{
				return false;
			}
			return control.Site.DesignMode;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Styles")]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
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

	[Localizable(true)]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	public virtual string FooterText
	{
		get
		{
			object obj = viewState["footerText"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["footerText"] = value;
			OnFieldChanged();
		}
	}

	[UrlProperty]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[WebCategory("Appearance")]
	public virtual string HeaderImageUrl
	{
		get
		{
			object obj = viewState["headerImageUrl"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["headerImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[WebCategory("Styles")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
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

	[DefaultValue("")]
	[Localizable(true)]
	[WebCategory("Appearance")]
	public virtual string HeaderText
	{
		get
		{
			object obj = viewState["headerText"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["headerText"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(true)]
	[WebCategory("Behavior")]
	public virtual bool InsertVisible
	{
		get
		{
			object obj = viewState["InsertVisible"];
			if (obj == null)
			{
				return true;
			}
			return (bool)obj;
		}
		set
		{
			viewState["InsertVisible"] = value;
			OnFieldChanged();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Styles")]
	[DefaultValue(null)]
	public TableItemStyle ItemStyle
	{
		get
		{
			if (itemStyle == null)
			{
				itemStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					itemStyle.TrackViewState();
				}
			}
			return itemStyle;
		}
	}

	[WebCategory("Behavior")]
	[DefaultValue(true)]
	public virtual bool ShowHeader
	{
		get
		{
			object obj = viewState["showHeader"];
			if (obj == null)
			{
				return true;
			}
			return (bool)obj;
		}
		set
		{
			viewState["showHeader"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[DefaultValue("")]
	public virtual string SortExpression
	{
		get
		{
			object obj = viewState["sortExpression"];
			if (obj == null)
			{
				return string.Empty;
			}
			return (string)obj;
		}
		set
		{
			viewState["sortExpression"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(true)]
	[WebCategory("Behavior")]
	public bool Visible
	{
		get
		{
			object obj = viewState["visible"];
			if (obj == null)
			{
				return true;
			}
			return (bool)obj;
		}
		set
		{
			if (value != Visible)
			{
				viewState["visible"] = value;
				OnFieldChanged();
			}
		}
	}

	protected bool IsTrackingViewState => tracking;

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	object IDataSourceViewSchemaAccessor.DataSourceViewSchema
	{
		get
		{
			return viewState["dataSourceViewSchema"];
		}
		set
		{
			viewState["dataSourceViewSchema"] = value;
		}
	}

	protected internal virtual ValidateRequestMode ValidateRequestMode
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

	internal event EventHandler FieldChanged
	{
		add
		{
			events.AddHandler(fieldChangedEvent, value);
		}
		remove
		{
			events.RemoveHandler(fieldChangedEvent, value);
		}
	}

	protected DataControlField()
	{
		viewState = new StateBag();
	}

	internal void SetDirty()
	{
		viewState.SetDirty(dirty: true);
	}

	public virtual void ExtractValuesFromCell(IOrderedDictionary dictionary, DataControlFieldCell cell, DataControlRowState rowState, bool includeReadOnly)
	{
	}

	public virtual bool Initialize(bool sortingEnabled, Control control)
	{
		this.sortingEnabled = sortingEnabled;
		this.control = control;
		return false;
	}

	public virtual void InitializeCell(DataControlFieldCell cell, DataControlCellType cellType, DataControlRowState rowState, int rowIndex)
	{
		switch (cellType)
		{
		case DataControlCellType.Header:
			if (HeaderText.Length > 0 && sortingEnabled && SortExpression.Length > 0)
			{
				cell.Controls.Add((Control)DataControlButton.CreateButton((!string.IsNullOrEmpty(HeaderImageUrl)) ? ButtonType.Image : ButtonType.Link, control, HeaderText, HeaderImageUrl, "Sort", SortExpression, allowCallback: true));
			}
			else if (HeaderImageUrl.Length > 0)
			{
				Image image = new Image();
				image.ImageUrl = HeaderImageUrl;
				cell.Controls.Add(image);
			}
			else
			{
				cell.Text = ((HeaderText.Length > 0) ? HeaderText : "&nbsp;");
			}
			break;
		case DataControlCellType.Footer:
		{
			string footerText = FooterText;
			cell.Text = ((footerText.Length > 0) ? footerText : "&nbsp;");
			break;
		}
		}
	}

	protected internal DataControlField CloneField()
	{
		DataControlField dataControlField = CreateField();
		CopyProperties(dataControlField);
		return dataControlField;
	}

	protected abstract DataControlField CreateField();

	protected virtual void CopyProperties(DataControlField newField)
	{
		newField.AccessibleHeaderText = AccessibleHeaderText;
		newField.ControlStyle.CopyFrom(ControlStyle);
		newField.FooterStyle.CopyFrom(FooterStyle);
		newField.FooterText = FooterText;
		newField.HeaderImageUrl = HeaderImageUrl;
		newField.HeaderStyle.CopyFrom(HeaderStyle);
		newField.HeaderText = HeaderText;
		newField.InsertVisible = InsertVisible;
		newField.ItemStyle.CopyFrom(ItemStyle);
		newField.ShowHeader = ShowHeader;
		newField.SortExpression = SortExpression;
		newField.Visible = Visible;
	}

	protected virtual void OnFieldChanged()
	{
		if (events[fieldChangedEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
	}

	protected virtual void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			viewState.LoadViewState(array[0]);
			if (array[1] != null)
			{
				((IStateManager)ControlStyle).LoadViewState(array[1]);
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
				((IStateManager)ItemStyle).LoadViewState(array[4]);
			}
		}
	}

	protected virtual object SaveViewState()
	{
		object[] array = new object[5]
		{
			viewState.SaveViewState(),
			null,
			null,
			null,
			null
		};
		if (controlStyle != null)
		{
			array[1] = ((IStateManager)controlStyle).SaveViewState();
		}
		if (footerStyle != null)
		{
			array[2] = ((IStateManager)footerStyle).SaveViewState();
		}
		if (headerStyle != null)
		{
			array[3] = ((IStateManager)headerStyle).SaveViewState();
		}
		if (itemStyle != null)
		{
			array[4] = ((IStateManager)itemStyle).SaveViewState();
		}
		if (array[0] == null && array[1] == null && array[2] == null && array[3] == null && array[4] == null)
		{
			return null;
		}
		return array;
	}

	protected virtual void TrackViewState()
	{
		if (controlStyle != null)
		{
			((IStateManager)controlStyle).TrackViewState();
		}
		if (footerStyle != null)
		{
			((IStateManager)footerStyle).TrackViewState();
		}
		if (headerStyle != null)
		{
			((IStateManager)headerStyle).TrackViewState();
		}
		if (itemStyle != null)
		{
			((IStateManager)itemStyle).TrackViewState();
		}
		viewState.TrackViewState();
		tracking = true;
	}

	public virtual void ValidateSupportsCallback()
	{
		throw new NotSupportedException("Callback not supported");
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	internal Exception GetNotSupportedPropException(string propName)
	{
		return new NotSupportedException("The property '" + propName + "' is not supported in " + GetType().Name);
	}

	public override string ToString()
	{
		if (string.IsNullOrEmpty(HeaderText))
		{
			return base.ToString();
		}
		return HeaderText;
	}
}
