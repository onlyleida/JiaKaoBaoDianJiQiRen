using System.Collections;
using System.ComponentModel;
using System.Globalization;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.DataListDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlValueProperty("SelectedValue")]
[Editor("System.Web.UI.Design.WebControls.DataListComponentEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.ComponentEditor, System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DataList : BaseDataList, INamingContainer, IRepeatInfoUser
{
	public const string CancelCommandName = "Cancel";

	public const string DeleteCommandName = "Delete";

	public const string EditCommandName = "Edit";

	public const string SelectCommandName = "Select";

	public const string UpdateCommandName = "Update";

	private static readonly object cancelCommandEvent = new object();

	private static readonly object deleteCommandEvent = new object();

	private static readonly object editCommandEvent = new object();

	private static readonly object itemCommandEvent = new object();

	private static readonly object itemCreatedEvent = new object();

	private static readonly object itemDataBoundEvent = new object();

	private static readonly object updateCommandEvent = new object();

	private TableItemStyle alternatingItemStyle;

	private TableItemStyle editItemStyle;

	private TableItemStyle footerStyle;

	private TableItemStyle headerStyle;

	private TableItemStyle itemStyle;

	private TableItemStyle selectedItemStyle;

	private TableItemStyle separatorStyle;

	private ITemplate alternatingItemTemplate;

	private ITemplate editItemTemplate;

	private ITemplate footerTemplate;

	private ITemplate headerTemplate;

	private ITemplate itemTemplate;

	private ITemplate selectedItemTemplate;

	private ITemplate separatorTemplate;

	private DataListItemCollection items;

	private ArrayList list;

	private int idx;

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual TableItemStyle AlternatingItemStyle
	{
		get
		{
			if (alternatingItemStyle == null)
			{
				alternatingItemStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					alternatingItemStyle.TrackViewState();
				}
			}
			return alternatingItemStyle;
		}
	}

	[TemplateContainer(typeof(DataListItem))]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	[Browsable(false)]
	[DefaultValue(null)]
	public virtual ITemplate AlternatingItemTemplate
	{
		get
		{
			return alternatingItemTemplate;
		}
		set
		{
			alternatingItemTemplate = value;
		}
	}

	[DefaultValue(-1)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual int EditItemIndex
	{
		get
		{
			object obj = ViewState["EditItemIndex"];
			if (obj != null)
			{
				return (int)obj;
			}
			return -1;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("EditItemIndex", "< -1");
			}
			ViewState["EditItemIndex"] = value;
		}
	}

	[WebCategory("Style")]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	public virtual TableItemStyle EditItemStyle
	{
		get
		{
			if (editItemStyle == null)
			{
				editItemStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					editItemStyle.TrackViewState();
				}
			}
			return editItemStyle;
		}
	}

	[WebCategory("Style")]
	[WebSysDescription("")]
	[TemplateContainer(typeof(DataListItem))]
	[DefaultValue(null)]
	[Browsable(false)]
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

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual bool ExtractTemplateRows
	{
		get
		{
			object obj = ViewState["ExtractTemplateRows"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["ExtractTemplateRows"] = value;
		}
	}

	[WebCategory("Style")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual TableItemStyle FooterStyle
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

	[WebCategory("Style")]
	[WebSysDescription("")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(DataListItem))]
	[DefaultValue(null)]
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

	[DefaultValue(GridLines.None)]
	public override GridLines GridLines
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return GridLines.None;
			}
			return TableStyle.GridLines;
		}
		set
		{
			TableStyle.GridLines = value;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual TableItemStyle HeaderStyle
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

	[TemplateContainer(typeof(DataListItem))]
	[WebSysDescription("")]
	[WebCategory("Style")]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
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

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual DataListItemCollection Items
	{
		get
		{
			if (items == null)
			{
				items = new DataListItemCollection(ItemList);
			}
			return items;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[WebCategory("Style")]
	[WebSysDescription("")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	public virtual TableItemStyle ItemStyle
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

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Style")]
	[TemplateContainer(typeof(DataListItem))]
	[WebSysDescription("")]
	[Browsable(false)]
	[DefaultValue(null)]
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

	[WebCategory("Layout")]
	[DefaultValue(0)]
	[WebSysDescription("")]
	public virtual int RepeatColumns
	{
		get
		{
			object obj = ViewState["RepeatColumns"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 0;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value", "RepeatColumns value has to be 0 for 'not set' or > 0.");
			}
			ViewState["RepeatColumns"] = value;
		}
	}

	[DefaultValue(RepeatDirection.Vertical)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual RepeatDirection RepeatDirection
	{
		get
		{
			object obj = ViewState["RepeatDirection"];
			if (obj != null)
			{
				return (RepeatDirection)obj;
			}
			return RepeatDirection.Vertical;
		}
		set
		{
			ViewState["RepeatDirection"] = value;
		}
	}

	[DefaultValue(RepeatLayout.Table)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual RepeatLayout RepeatLayout
	{
		get
		{
			object obj = ViewState["RepeatLayout"];
			if (obj != null)
			{
				return (RepeatLayout)obj;
			}
			return RepeatLayout.Table;
		}
		set
		{
			if (value == RepeatLayout.OrderedList || value == RepeatLayout.UnorderedList)
			{
				throw new ArgumentOutOfRangeException($"DataList does not support the '{value}' layout.");
			}
			ViewState["RepeatLayout"] = value;
		}
	}

	[WebCategory("Layout")]
	[Bindable(true)]
	[WebSysDescription("")]
	[DefaultValue(-1)]
	public virtual int SelectedIndex
	{
		get
		{
			object obj = ViewState["SelectedIndex"];
			if (obj != null)
			{
				return (int)obj;
			}
			return -1;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("SelectedIndex", "< -1");
			}
			ViewState["SelectedIndex"] = value;
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual DataListItem SelectedItem
	{
		get
		{
			if (SelectedIndex < 0)
			{
				return null;
			}
			if (SelectedIndex >= Items.Count)
			{
				throw new ArgumentOutOfRangeException("SelectedItem", ">= Items.Count");
			}
			return items[SelectedIndex];
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	[DefaultValue(null)]
	public virtual TableItemStyle SelectedItemStyle
	{
		get
		{
			if (selectedItemStyle == null)
			{
				selectedItemStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					selectedItemStyle.TrackViewState();
				}
			}
			return selectedItemStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(DataListItem))]
	[DefaultValue(null)]
	[Browsable(false)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual ITemplate SelectedItemTemplate
	{
		get
		{
			return selectedItemTemplate;
		}
		set
		{
			selectedItemTemplate = value;
		}
	}

	[WebCategory("Style")]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	public virtual TableItemStyle SeparatorStyle
	{
		get
		{
			if (separatorStyle == null)
			{
				separatorStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					separatorStyle.TrackViewState();
				}
			}
			return separatorStyle;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[TemplateContainer(typeof(DataListItem))]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual ITemplate SeparatorTemplate
	{
		get
		{
			return separatorTemplate;
		}
		set
		{
			separatorTemplate = value;
		}
	}

	[DefaultValue(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual bool ShowFooter
	{
		get
		{
			object obj = ViewState["ShowFooter"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["ShowFooter"] = value;
		}
	}

	[WebSysDescription("")]
	[DefaultValue(true)]
	[WebCategory("Appearance")]
	public virtual bool ShowHeader
	{
		get
		{
			object obj = ViewState["ShowHeader"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["ShowHeader"] = value;
		}
	}

	[MonoTODO("incomplete")]
	[Browsable(false)]
	public object SelectedValue
	{
		get
		{
			if (DataKeyField.Length == 0)
			{
				throw new InvalidOperationException(Locale.GetText("No DataKeyField present."));
			}
			int selectedIndex = SelectedIndex;
			if (selectedIndex >= 0 && selectedIndex < DataKeys.Count)
			{
				return DataKeys[selectedIndex];
			}
			return null;
		}
	}

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Table;

	private TableStyle TableStyle => (TableStyle)ControlStyle;

	private ArrayList ItemList
	{
		get
		{
			if (list == null)
			{
				list = new ArrayList();
			}
			return list;
		}
	}

	bool IRepeatInfoUser.HasFooter
	{
		get
		{
			if (ShowFooter)
			{
				return footerTemplate != null;
			}
			return false;
		}
	}

	bool IRepeatInfoUser.HasHeader
	{
		get
		{
			if (ShowHeader)
			{
				return headerTemplate != null;
			}
			return false;
		}
	}

	bool IRepeatInfoUser.HasSeparators => separatorTemplate != null;

	int IRepeatInfoUser.RepeatedItemCount
	{
		get
		{
			if (idx == -1)
			{
				object obj = ViewState["Items"];
				idx = ((obj != null) ? ((int)obj) : 0);
			}
			return idx;
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataListCommandEventHandler CancelCommand
	{
		add
		{
			Events.AddHandler(cancelCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(cancelCommandEvent, value);
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataListCommandEventHandler DeleteCommand
	{
		add
		{
			Events.AddHandler(deleteCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(deleteCommandEvent, value);
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataListCommandEventHandler EditCommand
	{
		add
		{
			Events.AddHandler(editCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(editCommandEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataListCommandEventHandler ItemCommand
	{
		add
		{
			Events.AddHandler(itemCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(itemCommandEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataListItemEventHandler ItemCreated
	{
		add
		{
			Events.AddHandler(itemCreatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(itemCreatedEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataListItemEventHandler ItemDataBound
	{
		add
		{
			Events.AddHandler(itemDataBoundEvent, value);
		}
		remove
		{
			Events.RemoveHandler(itemDataBoundEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataListCommandEventHandler UpdateCommand
	{
		add
		{
			Events.AddHandler(updateCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(updateCommandEvent, value);
		}
	}

	public DataList()
	{
		idx = -1;
	}

	private void DoItem(int i, ListItemType t, object d, bool databind)
	{
		DataListItem dataListItem = CreateItem(i, t);
		if (databind)
		{
			dataListItem.DataItem = d;
		}
		DataListItemEventArgs e = new DataListItemEventArgs(dataListItem);
		InitializeItem(dataListItem);
		Controls.Add(dataListItem);
		if (i != -1)
		{
			ItemList.Add(dataListItem);
		}
		OnItemCreated(e);
		if (databind)
		{
			dataListItem.DataBind();
			OnItemDataBound(e);
			dataListItem.DataItem = null;
		}
	}

	private void DoItemInLoop(int i, object d, bool databind, ListItemType type)
	{
		DoItem(i, type, d, databind);
		if (SeparatorTemplate != null)
		{
			DoItem(i, ListItemType.Separator, null, databind);
		}
	}

	protected override void CreateControlHierarchy(bool useDataSource)
	{
		Controls.Clear();
		ItemList.Clear();
		IEnumerable enumerable = null;
		ArrayList arrayList = null;
		if (useDataSource)
		{
			idx = 0;
			enumerable = ((!IsBoundUsingDataSourceID) ? DataSourceResolver.ResolveDataSource(DataSource, DataMember) : GetData());
			arrayList = DataKeysArray;
			arrayList.Clear();
		}
		else
		{
			idx = (int)ViewState["Items"];
		}
		if (enumerable == null && idx == 0)
		{
			return;
		}
		if (headerTemplate != null)
		{
			DoItem(-1, ListItemType.Header, null, useDataSource);
		}
		int selectedIndex = SelectedIndex;
		int editItemIndex = EditItemIndex;
		if (enumerable != null)
		{
			string dataKeyField = DataKeyField;
			foreach (object item in enumerable)
			{
				if (useDataSource && !string.IsNullOrEmpty(dataKeyField))
				{
					arrayList.Add(DataBinder.GetPropertyValue(item, dataKeyField));
				}
				ListItemType type = ListItemType.Item;
				if (idx == editItemIndex)
				{
					type = ListItemType.EditItem;
				}
				else if (idx == selectedIndex)
				{
					type = ListItemType.SelectedItem;
				}
				else if ((idx & 1) != 0)
				{
					type = ListItemType.AlternatingItem;
				}
				DoItemInLoop(idx, item, useDataSource, type);
				idx++;
			}
		}
		else
		{
			for (int i = 0; i < idx; i++)
			{
				ListItemType type = ListItemType.Item;
				if (i == editItemIndex)
				{
					type = ListItemType.EditItem;
				}
				else if (i == selectedIndex)
				{
					type = ListItemType.SelectedItem;
				}
				else if ((i & 1) != 0)
				{
					type = ListItemType.AlternatingItem;
				}
				DoItemInLoop(i, null, useDataSource, type);
			}
		}
		if (footerTemplate != null)
		{
			DoItem(-1, ListItemType.Footer, null, useDataSource);
		}
		ViewState["Items"] = idx;
	}

	protected override Style CreateControlStyle()
	{
		return new TableStyle
		{
			CellSpacing = 0
		};
	}

	protected virtual DataListItem CreateItem(int itemIndex, ListItemType itemType)
	{
		return new DataListItem(itemIndex, itemType);
	}

	protected virtual void InitializeItem(DataListItem item)
	{
		ITemplate template = null;
		switch (item.ItemType)
		{
		case ListItemType.Header:
			template = HeaderTemplate;
			break;
		case ListItemType.Footer:
			template = FooterTemplate;
			break;
		case ListItemType.Separator:
			template = SeparatorTemplate;
			break;
		case ListItemType.Item:
		case ListItemType.AlternatingItem:
		case ListItemType.SelectedItem:
		case ListItemType.EditItem:
			if (item.ItemType == ListItemType.EditItem && EditItemTemplate != null)
			{
				template = EditItemTemplate;
			}
			else if (item.ItemType == ListItemType.SelectedItem && SelectedItemTemplate != null)
			{
				template = SelectedItemTemplate;
			}
			else
			{
				template = ((item.ItemType != ListItemType.AlternatingItem || AlternatingItemTemplate == null) ? ItemTemplate : AlternatingItemTemplate);
			}
			break;
		}
		template?.InstantiateIn(item);
	}

	protected override void LoadViewState(object savedState)
	{
		object[] array = (object[])savedState;
		base.LoadViewState(array[0]);
		if (array[1] != null)
		{
			ItemStyle.LoadViewState(array[1]);
		}
		if (array[2] != null)
		{
			SelectedItemStyle.LoadViewState(array[2]);
		}
		if (array[3] != null)
		{
			AlternatingItemStyle.LoadViewState(array[3]);
		}
		if (array[4] != null)
		{
			EditItemStyle.LoadViewState(array[4]);
		}
		if (array[5] != null)
		{
			SeparatorStyle.LoadViewState(array[5]);
		}
		if (array[6] != null)
		{
			HeaderStyle.LoadViewState(array[6]);
		}
		if (array[7] != null)
		{
			FooterStyle.LoadViewState(array[7]);
		}
		if (array[8] != null)
		{
			ControlStyle.LoadViewState(array[8]);
		}
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (!(e is DataListCommandEventArgs { CommandName: var commandName } e2))
		{
			return false;
		}
		CultureInfo invariantCulture = Helpers.InvariantCulture;
		OnItemCommand(e2);
		if (string.Compare(commandName, "Cancel", ignoreCase: true, invariantCulture) == 0)
		{
			OnCancelCommand(e2);
		}
		else if (string.Compare(commandName, "Delete", ignoreCase: true, invariantCulture) == 0)
		{
			OnDeleteCommand(e2);
		}
		else if (string.Compare(commandName, "Edit", ignoreCase: true, invariantCulture) == 0)
		{
			OnEditCommand(e2);
		}
		else if (string.Compare(commandName, "Select", ignoreCase: true, invariantCulture) == 0)
		{
			SelectedIndex = e2.Item.ItemIndex;
			OnSelectedIndexChanged(e2);
		}
		else if (string.Compare(commandName, "Update", ignoreCase: true, invariantCulture) == 0)
		{
			OnUpdateCommand(e2);
		}
		return true;
	}

	protected virtual void OnCancelCommand(DataListCommandEventArgs e)
	{
		((DataListCommandEventHandler)Events[cancelCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnDeleteCommand(DataListCommandEventArgs e)
	{
		((DataListCommandEventHandler)Events[deleteCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnEditCommand(DataListCommandEventArgs e)
	{
		((DataListCommandEventHandler)Events[editCommandEvent])?.Invoke(this, e);
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page?.RegisterRequiresControlState(this);
		base.OnInit(e);
	}

	protected virtual void OnItemCommand(DataListCommandEventArgs e)
	{
		((DataListCommandEventHandler)Events[itemCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemCreated(DataListItemEventArgs e)
	{
		((DataListItemEventHandler)Events[itemCreatedEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemDataBound(DataListItemEventArgs e)
	{
		((DataListItemEventHandler)Events[itemDataBoundEvent])?.Invoke(this, e);
	}

	protected virtual void OnUpdateCommand(DataListCommandEventArgs e)
	{
		((DataListCommandEventHandler)Events[updateCommandEvent])?.Invoke(this, e);
	}

	protected override void PrepareControlHierarchy()
	{
		if (!HasControls() || Controls.Count == 0)
		{
			return;
		}
		Style style = null;
		foreach (DataListItem control in Controls)
		{
			switch (control.ItemType)
			{
			case ListItemType.Item:
				control.MergeStyle(itemStyle);
				break;
			case ListItemType.AlternatingItem:
				if (style == null)
				{
					if (alternatingItemStyle != null)
					{
						style = new TableItemStyle();
						style.CopyFrom(itemStyle);
						style.CopyFrom(alternatingItemStyle);
					}
					else
					{
						style = itemStyle;
					}
				}
				control.MergeStyle(style);
				break;
			case ListItemType.EditItem:
				if (editItemStyle != null)
				{
					control.MergeStyle(editItemStyle);
				}
				else
				{
					control.MergeStyle(itemStyle);
				}
				break;
			case ListItemType.Footer:
				if (!ShowFooter)
				{
					control.Visible = false;
				}
				else if (footerStyle != null)
				{
					control.MergeStyle(footerStyle);
				}
				break;
			case ListItemType.Header:
				if (!ShowHeader)
				{
					control.Visible = false;
				}
				else if (headerStyle != null)
				{
					control.MergeStyle(headerStyle);
				}
				break;
			case ListItemType.SelectedItem:
				if (selectedItemStyle != null)
				{
					control.MergeStyle(selectedItemStyle);
				}
				else
				{
					control.MergeStyle(itemStyle);
				}
				break;
			case ListItemType.Separator:
				if (separatorStyle != null)
				{
					control.MergeStyle(separatorStyle);
				}
				else
				{
					control.MergeStyle(itemStyle);
				}
				break;
			}
		}
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		if (Items.Count == 0)
		{
			return;
		}
		RepeatInfo repeatInfo = new RepeatInfo();
		repeatInfo.RepeatColumns = RepeatColumns;
		repeatInfo.RepeatDirection = RepeatDirection;
		repeatInfo.RepeatLayout = RepeatLayout;
		repeatInfo.CaptionAlign = CaptionAlign;
		repeatInfo.Caption = Caption;
		repeatInfo.UseAccessibleHeader = UseAccessibleHeader;
		if (ExtractTemplateRows)
		{
			repeatInfo.OuterTableImplied = true;
			writer.AddAttribute(HtmlTextWriterAttribute.Id, ClientID);
			if (ControlStyleCreated)
			{
				ControlStyle.AddAttributesToRender(writer);
			}
			writer.RenderBeginTag(HtmlTextWriterTag.Table);
			repeatInfo.RenderRepeater(writer, this, ControlStyle, this);
			writer.RenderEndTag();
		}
		else
		{
			repeatInfo.RenderRepeater(writer, this, ControlStyle, this);
		}
	}

	protected override object SaveViewState()
	{
		object[] array = new object[9]
		{
			base.SaveViewState(),
			null,
			null,
			null,
			null,
			null,
			null,
			null,
			null
		};
		if (itemStyle != null)
		{
			array[1] = itemStyle.SaveViewState();
		}
		if (selectedItemStyle != null)
		{
			array[2] = selectedItemStyle.SaveViewState();
		}
		if (alternatingItemStyle != null)
		{
			array[3] = alternatingItemStyle.SaveViewState();
		}
		if (editItemStyle != null)
		{
			array[4] = editItemStyle.SaveViewState();
		}
		if (separatorStyle != null)
		{
			array[5] = separatorStyle.SaveViewState();
		}
		if (headerStyle != null)
		{
			array[6] = headerStyle.SaveViewState();
		}
		if (footerStyle != null)
		{
			array[7] = footerStyle.SaveViewState();
		}
		if (ControlStyleCreated)
		{
			array[8] = ControlStyle.SaveViewState();
		}
		return array;
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (alternatingItemStyle != null)
		{
			alternatingItemStyle.TrackViewState();
		}
		if (editItemStyle != null)
		{
			editItemStyle.TrackViewState();
		}
		if (footerStyle != null)
		{
			footerStyle.TrackViewState();
		}
		if (headerStyle != null)
		{
			headerStyle.TrackViewState();
		}
		if (itemStyle != null)
		{
			itemStyle.TrackViewState();
		}
		if (selectedItemStyle != null)
		{
			selectedItemStyle.TrackViewState();
		}
		if (separatorStyle != null)
		{
			separatorStyle.TrackViewState();
		}
		if (ControlStyleCreated)
		{
			ControlStyle.TrackViewState();
		}
	}

	Style IRepeatInfoUser.GetItemStyle(ListItemType itemType, int repeatIndex)
	{
		DataListItem dataListItem = null;
		switch (itemType)
		{
		case ListItemType.Header:
		case ListItemType.Footer:
			if (repeatIndex >= 0 && (!HasControls() || repeatIndex >= Controls.Count))
			{
				throw new ArgumentOutOfRangeException();
			}
			dataListItem = FindFirstItem(itemType);
			break;
		case ListItemType.Item:
		case ListItemType.AlternatingItem:
		case ListItemType.SelectedItem:
		case ListItemType.EditItem:
			if (repeatIndex >= 0 && (!HasControls() || repeatIndex >= Controls.Count))
			{
				throw new ArgumentOutOfRangeException();
			}
			dataListItem = FindBestItem(repeatIndex);
			break;
		case ListItemType.Separator:
			if (repeatIndex >= 0 && (!HasControls() || repeatIndex >= Controls.Count))
			{
				throw new ArgumentOutOfRangeException();
			}
			dataListItem = FindSpecificItem(itemType, repeatIndex);
			break;
		default:
			dataListItem = null;
			break;
		}
		if (dataListItem == null || !dataListItem.ControlStyleCreated)
		{
			return null;
		}
		return dataListItem.ControlStyle;
	}

	private DataListItem FindFirstItem(ListItemType itemType)
	{
		for (int i = 0; i < Controls.Count; i++)
		{
			if (Controls[i] is DataListItem dataListItem && dataListItem.ItemType == itemType)
			{
				return dataListItem;
			}
		}
		return null;
	}

	private DataListItem FindSpecificItem(ListItemType itemType, int repeatIndex)
	{
		for (int i = 0; i < Controls.Count; i++)
		{
			if (Controls[i] is DataListItem dataListItem && dataListItem.ItemType == itemType && dataListItem.ItemIndex == repeatIndex)
			{
				return dataListItem;
			}
		}
		return null;
	}

	private DataListItem FindBestItem(int repeatIndex)
	{
		for (int i = 0; i < Controls.Count; i++)
		{
			if (Controls[i] is DataListItem dataListItem && dataListItem.ItemIndex == repeatIndex)
			{
				ListItemType itemType = dataListItem.ItemType;
				if ((uint)(itemType - 2) <= 3u)
				{
					return dataListItem;
				}
				return null;
			}
		}
		return null;
	}

	void IRepeatInfoUser.RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
	{
		if (!HasControls())
		{
			return;
		}
		DataListItem dataListItem = null;
		switch (itemType)
		{
		case ListItemType.Header:
		case ListItemType.Footer:
			dataListItem = FindFirstItem(itemType);
			break;
		case ListItemType.Item:
		case ListItemType.AlternatingItem:
		case ListItemType.SelectedItem:
		case ListItemType.EditItem:
			dataListItem = FindBestItem(repeatIndex);
			break;
		case ListItemType.Separator:
			dataListItem = FindSpecificItem(itemType, repeatIndex);
			break;
		}
		if (dataListItem == null)
		{
			return;
		}
		bool extractTemplateRows = ExtractTemplateRows;
		bool flag = RepeatLayout == RepeatLayout.Table;
		if (!flag | extractTemplateRows)
		{
			Style style = ((IRepeatInfoUser)this).GetItemStyle(itemType, repeatIndex);
			if (style != null)
			{
				dataListItem.ControlStyle.CopyFrom(style);
			}
		}
		dataListItem.RenderItem(writer, extractTemplateRows, flag);
	}
}
