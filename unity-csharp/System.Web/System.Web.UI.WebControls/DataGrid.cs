using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Globalization;
using System.Reflection;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.DataGridComponentEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(ComponentEditor))]
[Designer("System.Web.UI.Design.WebControls.DataGridDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DataGrid : BaseDataList, INamingContainer
{
	private sealed class NCollection : ICollection, IEnumerable
	{
		private int n;

		public int Count => n;

		public bool IsSynchronized => false;

		public object SyncRoot => this;

		public NCollection(int n)
		{
			this.n = n;
		}

		public IEnumerator GetEnumerator()
		{
			for (int i = 0; i < n; i++)
			{
				yield return i;
			}
		}

		public void CopyTo(Array array, int index)
		{
			throw new NotImplementedException("This should never be called");
		}
	}

	public const string CancelCommandName = "Cancel";

	public const string DeleteCommandName = "Delete";

	public const string EditCommandName = "Edit";

	public const string SelectCommandName = "Select";

	public const string SortCommandName = "Sort";

	public const string UpdateCommandName = "Update";

	public const string PageCommandName = "Page";

	public const string NextPageCommandArgument = "Next";

	public const string PrevPageCommandArgument = "Prev";

	private static readonly object CancelCommandEvent = new object();

	private static readonly object DeleteCommandEvent = new object();

	private static readonly object EditCommandEvent = new object();

	private static readonly object ItemCommandEvent = new object();

	private static readonly object ItemCreatedEvent = new object();

	private static readonly object ItemDataBoundEvent = new object();

	private static readonly object PageIndexChangedEvent = new object();

	private static readonly object SortCommandEvent = new object();

	private static readonly object UpdateCommandEvent = new object();

	private TableItemStyle alt_item_style;

	private TableItemStyle edit_item_style;

	private TableItemStyle footer_style;

	private TableItemStyle header_style;

	private TableItemStyle item_style;

	private TableItemStyle selected_style;

	private DataGridPagerStyle pager_style;

	private ArrayList items_list;

	private DataGridItemCollection items;

	private ArrayList columns_list;

	private DataGridColumnCollection columns;

	private ArrayList data_source_columns_list;

	private DataGridColumnCollection data_source_columns;

	private Table render_table;

	private DataGridColumn[] render_columns;

	private PagedDataSource paged_data_source;

	private IEnumerator data_enumerator;

	private static Type[] item_args = new Type[1] { typeof(int) };

	[WebSysDescription("")]
	[DefaultValue(false)]
	[WebCategory("Paging")]
	public virtual bool AllowCustomPaging
	{
		get
		{
			return ViewState.GetBool("AllowCustomPaging", def: false);
		}
		set
		{
			ViewState["AllowCustomPaging"] = value;
		}
	}

	[WebCategory("Paging")]
	[WebSysDescription("")]
	[DefaultValue(false)]
	public virtual bool AllowPaging
	{
		get
		{
			return ViewState.GetBool("AllowPaging", def: false);
		}
		set
		{
			ViewState["AllowPaging"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue(false)]
	public virtual bool AllowSorting
	{
		get
		{
			return ViewState.GetBool("AllowSorting", def: false);
		}
		set
		{
			ViewState["AllowSorting"] = value;
		}
	}

	[DefaultValue(true)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool AutoGenerateColumns
	{
		get
		{
			return ViewState.GetBool("AutoGenerateColumns", def: true);
		}
		set
		{
			ViewState["AutoGenerateColumns"] = value;
		}
	}

	[UrlProperty]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string BackImageUrl
	{
		get
		{
			return TableStyle.BackImageUrl;
		}
		set
		{
			TableStyle.BackImageUrl = value;
		}
	}

	[Browsable(false)]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Behavior")]
	public int CurrentPageIndex
	{
		get
		{
			return ViewState.GetInt("CurrentPageIndex", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["CurrentPageIndex"] = value;
		}
	}

	[DefaultValue(-1)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual int EditItemIndex
	{
		get
		{
			return ViewState.GetInt("EditItemIndex", -1);
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["EditItemIndex"] = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Style")]
	[WebSysDescription("")]
	public int PageCount
	{
		get
		{
			if (paged_data_source != null)
			{
				return paged_data_source.PageCount;
			}
			return ViewState.GetInt("PageCount", 0);
		}
	}

	[WebCategory("Paging")]
	[DefaultValue(10)]
	[WebSysDescription("")]
	public virtual int PageSize
	{
		get
		{
			return ViewState.GetInt("PageSize", 10);
		}
		set
		{
			if (value < 1)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["PageSize"] = value;
		}
	}

	[Bindable(true)]
	[DefaultValue(-1)]
	[WebSysDescription("")]
	[WebCategory("Paging")]
	public virtual int SelectedIndex
	{
		get
		{
			return ViewState.GetInt("SelectedIndex", -1);
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			int prev_select = ViewState.GetInt("SelectedIndex", -1);
			AdjustItemTypes(prev_select, value);
			ViewState["SelectedIndex"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Style")]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual TableItemStyle AlternatingItemStyle
	{
		get
		{
			if (alt_item_style == null)
			{
				alt_item_style = new TableItemStyle();
				if (IsTrackingViewState)
				{
					alt_item_style.TrackViewState();
				}
			}
			return alt_item_style;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual TableItemStyle EditItemStyle
	{
		get
		{
			if (edit_item_style == null)
			{
				edit_item_style = new TableItemStyle();
				if (IsTrackingViewState)
				{
					edit_item_style.TrackViewState();
				}
			}
			return edit_item_style;
		}
	}

	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	public virtual TableItemStyle FooterStyle
	{
		get
		{
			if (footer_style == null)
			{
				footer_style = new TableItemStyle();
				if (IsTrackingViewState)
				{
					footer_style.TrackViewState();
				}
			}
			return footer_style;
		}
	}

	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public virtual TableItemStyle HeaderStyle
	{
		get
		{
			if (header_style == null)
			{
				header_style = new TableItemStyle();
				if (IsTrackingViewState)
				{
					header_style.TrackViewState();
				}
			}
			return header_style;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual TableItemStyle ItemStyle
	{
		get
		{
			if (item_style == null)
			{
				item_style = new TableItemStyle();
				if (IsTrackingViewState)
				{
					item_style.TrackViewState();
				}
			}
			return item_style;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	public virtual TableItemStyle SelectedItemStyle
	{
		get
		{
			if (selected_style == null)
			{
				selected_style = new TableItemStyle();
				if (IsTrackingViewState)
				{
					selected_style.TrackViewState();
				}
			}
			return selected_style;
		}
	}

	[WebCategory("Style")]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public virtual DataGridPagerStyle PagerStyle
	{
		get
		{
			if (pager_style == null)
			{
				pager_style = new DataGridPagerStyle();
				if (IsTrackingViewState)
				{
					pager_style.TrackViewState();
				}
			}
			return pager_style;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Style")]
	[Browsable(false)]
	public virtual DataGridItemCollection Items
	{
		get
		{
			EnsureChildControls();
			if (items == null)
			{
				if (items_list == null)
				{
					items_list = new ArrayList();
				}
				items = new DataGridItemCollection(items_list);
			}
			return items;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebCategory("Behavior")]
	[Editor("System.Web.UI.Design.WebControls.DataGridColumnCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[DefaultValue(null)]
	[MergableProperty(false)]
	[WebSysDescription("")]
	public virtual DataGridColumnCollection Columns
	{
		get
		{
			if (columns == null)
			{
				columns_list = new ArrayList();
				columns = new DataGridColumnCollection(this, columns_list);
				if (IsTrackingViewState)
				{
					((IStateManager)columns).TrackViewState();
				}
			}
			return columns;
		}
	}

	private DataGridColumnCollection DataSourceColumns
	{
		get
		{
			if (data_source_columns == null)
			{
				data_source_columns_list = new ArrayList();
				data_source_columns = new DataGridColumnCollection(this, data_source_columns_list);
				if (IsTrackingViewState)
				{
					((IStateManager)data_source_columns).TrackViewState();
				}
			}
			return data_source_columns;
		}
	}

	private Table RenderTable
	{
		get
		{
			if (render_table == null)
			{
				render_table = new ChildTable(this);
				render_table.AutoID = false;
			}
			return render_table;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Paging")]
	public virtual DataGridItem SelectedItem
	{
		get
		{
			if (SelectedIndex == -1)
			{
				return null;
			}
			return Items[SelectedIndex];
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual bool ShowFooter
	{
		get
		{
			return ViewState.GetBool("ShowFooter", def: false);
		}
		set
		{
			ViewState["ShowFooter"] = value;
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DefaultValue(true)]
	public virtual bool ShowHeader
	{
		get
		{
			return ViewState.GetBool("ShowHeader", def: true);
		}
		set
		{
			ViewState["ShowHeader"] = value;
		}
	}

	[WebCategory("Appearance")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public virtual int VirtualItemCount
	{
		get
		{
			return ViewState.GetInt("VirtualItemCount", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["VirtualItemCount"] = value;
		}
	}

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Table;

	private TableStyle TableStyle => (TableStyle)ControlStyle;

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataGridCommandEventHandler CancelCommand
	{
		add
		{
			Events.AddHandler(CancelCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(CancelCommandEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataGridCommandEventHandler DeleteCommand
	{
		add
		{
			Events.AddHandler(DeleteCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DeleteCommandEvent, value);
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataGridCommandEventHandler EditCommand
	{
		add
		{
			Events.AddHandler(EditCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(EditCommandEvent, value);
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataGridCommandEventHandler ItemCommand
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

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataGridItemEventHandler ItemCreated
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

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataGridItemEventHandler ItemDataBound
	{
		add
		{
			Events.AddHandler(ItemDataBoundEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemDataBoundEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event DataGridPageChangedEventHandler PageIndexChanged
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

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataGridSortCommandEventHandler SortCommand
	{
		add
		{
			Events.AddHandler(SortCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SortCommandEvent, value);
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event DataGridCommandEventHandler UpdateCommand
	{
		add
		{
			Events.AddHandler(UpdateCommandEvent, value);
		}
		remove
		{
			Events.AddHandler(UpdateCommandEvent, value);
		}
	}

	private void AdjustItemTypes(int prev_select, int new_select)
	{
		if (items_list == null)
		{
			return;
		}
		int count = items_list.Count;
		if (count == 0)
		{
			return;
		}
		if (prev_select >= 0 && prev_select < count)
		{
			DataGridItem dataGridItem = (DataGridItem)items_list[prev_select];
			if (dataGridItem.ItemType != ListItemType.EditItem)
			{
				if (dataGridItem.ItemIndex % 2 != 0)
				{
					dataGridItem.SetItemType(ListItemType.AlternatingItem);
				}
				else
				{
					dataGridItem.SetItemType(ListItemType.Item);
				}
			}
		}
		if (new_select != -1 && new_select < count)
		{
			DataGridItem dataGridItem = (DataGridItem)items_list[new_select];
			if (dataGridItem.ItemType != ListItemType.EditItem)
			{
				dataGridItem.SetItemType(ListItemType.SelectedItem);
			}
		}
	}

	private void AddColumnsFromSource(PagedDataSource data_source)
	{
		PropertyDescriptorCollection propertyDescriptorCollection = null;
		Type type = null;
		bool flag = false;
		PropertyInfo property = data_source.GetType().GetProperty("Item", item_args);
		if (property == null)
		{
			IEnumerator enumerator = ((data_source.DataSource != null) ? data_source.GetEnumerator() : null);
			if (enumerator != null && enumerator.MoveNext())
			{
				object current = enumerator.Current;
				if (current is ICustomTypeDescriptor || !BaseDataList.IsBindableType(current.GetType()))
				{
					propertyDescriptorCollection = TypeDescriptor.GetProperties(current);
				}
				else if (current != null)
				{
					type = current.GetType();
				}
				data_enumerator = enumerator;
			}
			else
			{
				flag = true;
			}
		}
		else
		{
			type = property.PropertyType;
		}
		if (type != null)
		{
			AddPropertyToColumns();
			return;
		}
		if (propertyDescriptorCollection != null)
		{
			foreach (PropertyDescriptor item in propertyDescriptorCollection)
			{
				AddPropertyToColumns(item, tothis: false);
			}
			return;
		}
		if (flag)
		{
			return;
		}
		throw new HttpException($"DataGrid '{ID}' cannot autogenerate columns from the given datasource. {type}");
	}

	protected virtual ArrayList CreateColumnSet(PagedDataSource dataSource, bool useDataSource)
	{
		ArrayList arrayList = new ArrayList();
		if (columns_list != null)
		{
			arrayList.AddRange(columns_list);
		}
		if (AutoGenerateColumns)
		{
			if (useDataSource)
			{
				data_enumerator = null;
				PropertyDescriptorCollection itemProperties = dataSource.GetItemProperties(null);
				DataSourceColumns.Clear();
				if (itemProperties != null)
				{
					foreach (PropertyDescriptor item in itemProperties)
					{
						AddPropertyToColumns(item, tothis: false);
					}
				}
				else
				{
					AddColumnsFromSource(dataSource);
				}
			}
			if (data_source_columns != null && data_source_columns.Count > 0)
			{
				arrayList.AddRange(data_source_columns);
			}
		}
		return arrayList;
	}

	private void AddPropertyToColumns()
	{
		BoundColumn boundColumn = new BoundColumn();
		if (IsTrackingViewState)
		{
			((IStateManager)boundColumn).TrackViewState();
		}
		boundColumn.Set_Owner(this);
		boundColumn.HeaderText = "Item";
		boundColumn.SortExpression = "Item";
		boundColumn.DataField = BoundColumn.thisExpr;
		DataSourceColumns.Add(boundColumn);
	}

	private void AddPropertyToColumns(PropertyDescriptor prop, bool tothis)
	{
		BoundColumn boundColumn = new BoundColumn();
		boundColumn.Set_Owner(this);
		if (IsTrackingViewState)
		{
			((IStateManager)boundColumn).TrackViewState();
		}
		boundColumn.HeaderText = prop.Name;
		boundColumn.DataField = (tothis ? BoundColumn.thisExpr : prop.Name);
		boundColumn.SortExpression = prop.Name;
		if (string.Compare(DataKeyField, boundColumn.DataField, StringComparison.OrdinalIgnoreCase) == 0)
		{
			boundColumn.ReadOnly = true;
		}
		DataSourceColumns.Add(boundColumn);
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (pager_style != null)
		{
			pager_style.TrackViewState();
		}
		if (header_style != null)
		{
			header_style.TrackViewState();
		}
		if (footer_style != null)
		{
			footer_style.TrackViewState();
		}
		if (item_style != null)
		{
			item_style.TrackViewState();
		}
		if (alt_item_style != null)
		{
			alt_item_style.TrackViewState();
		}
		if (selected_style != null)
		{
			selected_style.TrackViewState();
		}
		if (edit_item_style != null)
		{
			edit_item_style.TrackViewState();
		}
		if (ControlStyleCreated)
		{
			ControlStyle.TrackViewState();
		}
		((IStateManager)columns)?.TrackViewState();
	}

	protected override object SaveViewState()
	{
		object[] array = new object[11]
		{
			base.SaveViewState(),
			null,
			null,
			null,
			null,
			null,
			null,
			null,
			null,
			null,
			null
		};
		if (columns != null)
		{
			IStateManager stateManager = columns;
			array[1] = stateManager.SaveViewState();
		}
		if (pager_style != null)
		{
			array[2] = pager_style.SaveViewState();
		}
		if (header_style != null)
		{
			array[3] = header_style.SaveViewState();
		}
		if (footer_style != null)
		{
			array[4] = footer_style.SaveViewState();
		}
		if (item_style != null)
		{
			array[5] = item_style.SaveViewState();
		}
		if (alt_item_style != null)
		{
			array[6] = alt_item_style.SaveViewState();
		}
		if (selected_style != null)
		{
			array[7] = selected_style.SaveViewState();
		}
		if (edit_item_style != null)
		{
			array[8] = edit_item_style.SaveViewState();
		}
		if (ControlStyleCreated)
		{
			array[9] = ControlStyle.SaveViewState();
		}
		if (data_source_columns != null)
		{
			IStateManager stateManager2 = data_source_columns;
			array[10] = stateManager2.SaveViewState();
		}
		return array;
	}

	protected override void LoadViewState(object savedState)
	{
		if (!(savedState is object[] array))
		{
			return;
		}
		base.LoadViewState(array[0]);
		if (columns != null)
		{
			((IStateManager)columns).LoadViewState(array[1]);
		}
		if (array[2] != null)
		{
			PagerStyle.LoadViewState(array[2]);
		}
		if (array[3] != null)
		{
			HeaderStyle.LoadViewState(array[3]);
		}
		if (array[4] != null)
		{
			FooterStyle.LoadViewState(array[4]);
		}
		if (array[5] != null)
		{
			ItemStyle.LoadViewState(array[5]);
		}
		if (array[6] != null)
		{
			AlternatingItemStyle.LoadViewState(array[6]);
		}
		if (array[7] != null)
		{
			SelectedItemStyle.LoadViewState(array[7]);
		}
		if (array[8] != null)
		{
			EditItemStyle.LoadViewState(array[8]);
		}
		if (array[9] != null)
		{
			ControlStyle.LoadViewState(array[8]);
		}
		if (array[10] != null)
		{
			object[] array2 = (object[])array[10];
			foreach (object state in array2)
			{
				BoundColumn boundColumn = new BoundColumn();
				((IStateManager)boundColumn).TrackViewState();
				boundColumn.Set_Owner(this);
				((IStateManager)boundColumn).LoadViewState(state);
				DataSourceColumns.Add(boundColumn);
			}
		}
		if (array[9] != null)
		{
			object[] array2 = (object[])array[9];
			foreach (object state2 in array2)
			{
				BoundColumn boundColumn2 = new BoundColumn();
				boundColumn2.Set_Owner(this);
				((IStateManager)boundColumn2).LoadViewState(state2);
				DataSourceColumns.Add(boundColumn2);
			}
		}
	}

	protected override Style CreateControlStyle()
	{
		return new TableStyle
		{
			GridLines = GridLines.Both,
			CellSpacing = 0
		};
	}

	protected virtual void InitializeItem(DataGridItem item, DataGridColumn[] columns)
	{
		bool flag = UseAccessibleHeader && item.ItemType == ListItemType.Header;
		for (int i = 0; i < columns.Length; i++)
		{
			TableCell tableCell = null;
			if (flag)
			{
				tableCell = new TableHeaderCell();
				tableCell.Attributes["scope"] = "col";
			}
			else
			{
				tableCell = new TableCell();
			}
			columns[i].InitializeCell(tableCell, i, item.ItemType);
			item.Cells.Add(tableCell);
		}
	}

	protected virtual void InitializePager(DataGridItem item, int columnSpan, PagedDataSource pagedDataSource)
	{
		TableCell child = ((PagerStyle.Mode != PagerMode.NextPrev) ? InitializeNumericPager(item, columnSpan, pagedDataSource) : InitializeNextPrevPager(item, columnSpan, pagedDataSource));
		item.Controls.Add(child);
	}

	private TableCell InitializeNumericPager(DataGridItem item, int columnSpan, PagedDataSource paged)
	{
		TableCell tableCell = new TableCell();
		tableCell.ColumnSpan = columnSpan;
		int pageButtonCount = PagerStyle.PageButtonCount;
		int currentPageIndex = paged.CurrentPageIndex;
		int num = currentPageIndex - currentPageIndex % pageButtonCount;
		int num2 = num + pageButtonCount;
		if (num2 > paged.PageCount)
		{
			num2 = paged.PageCount;
		}
		if (num > 0)
		{
			LinkButton linkButton = new LinkButton();
			linkButton.Text = "...";
			linkButton.CommandName = "Page";
			linkButton.CommandArgument = num.ToString(Helpers.InvariantCulture);
			linkButton.CausesValidation = false;
			tableCell.Controls.Add(linkButton);
			tableCell.Controls.Add(new LiteralControl("&nbsp;"));
		}
		for (int i = num; i < num2; i++)
		{
			Control control = null;
			string text = (i + 1).ToString(Helpers.InvariantCulture);
			control = ((i == paged.CurrentPageIndex) ? ((WebControl)new Label
			{
				Text = text
			}) : ((WebControl)new LinkButton
			{
				Text = text,
				CommandName = "Page",
				CommandArgument = text,
				CausesValidation = false
			}));
			tableCell.Controls.Add(control);
			if (i < num2 - 1)
			{
				tableCell.Controls.Add(new LiteralControl("&nbsp;"));
			}
		}
		if (num2 < paged.PageCount)
		{
			tableCell.Controls.Add(new LiteralControl("&nbsp;"));
			LinkButton linkButton2 = new LinkButton();
			linkButton2.Text = "...";
			linkButton2.CommandName = "Page";
			linkButton2.CommandArgument = (num2 + 1).ToString(Helpers.InvariantCulture);
			linkButton2.CausesValidation = false;
			tableCell.Controls.Add(linkButton2);
		}
		return tableCell;
	}

	private TableCell InitializeNextPrevPager(DataGridItem item, int columnSpan, PagedDataSource paged)
	{
		TableCell tableCell = new TableCell
		{
			ColumnSpan = columnSpan
		};
		Control child = ((!paged.IsFirstPage) ? ((WebControl)new DataControlLinkButton
		{
			Text = PagerStyle.PrevPageText,
			CommandName = "Page",
			CommandArgument = "Prev",
			CausesValidation = false
		}) : ((WebControl)new Label
		{
			Text = PagerStyle.PrevPageText
		}));
		Control child2 = ((paged.Count <= 0 || paged.IsLastPage) ? ((WebControl)new Label
		{
			Text = PagerStyle.NextPageText
		}) : ((WebControl)new DataControlLinkButton
		{
			Text = PagerStyle.NextPageText,
			CommandName = "Page",
			CommandArgument = "Next",
			CausesValidation = false
		}));
		tableCell.Controls.Add(child);
		tableCell.Controls.Add(new LiteralControl("&nbsp;"));
		tableCell.Controls.Add(child2);
		return tableCell;
	}

	protected virtual DataGridItem CreateItem(int itemIndex, int dataSourceIndex, ListItemType itemType)
	{
		return new DataGridItem(itemIndex, dataSourceIndex, itemType);
	}

	private DataGridItem CreateItem(int item_index, int data_source_index, ListItemType type, bool data_bind, object data_item, PagedDataSource paged)
	{
		DataGridItem dataGridItem = CreateItem(item_index, data_source_index, type);
		DataGridItemEventArgs e = new DataGridItemEventArgs(dataGridItem);
		bool flag = type != ListItemType.Pager;
		if (flag)
		{
			InitializeItem(dataGridItem, render_columns);
			if (data_bind)
			{
				dataGridItem.DataItem = data_item;
			}
			OnItemCreated(e);
		}
		else
		{
			InitializePager(dataGridItem, render_columns.Length, paged);
			if (pager_style != null)
			{
				dataGridItem.ApplyStyle(pager_style);
			}
			OnItemCreated(e);
		}
		RenderTable.Controls.Add(dataGridItem);
		if (flag & data_bind)
		{
			dataGridItem.DataBind();
			OnItemDataBound(e);
			dataGridItem.DataItem = null;
		}
		return dataGridItem;
	}

	protected override void CreateControlHierarchy(bool useDataSource)
	{
		Controls.Clear();
		RenderTable.Controls.Clear();
		Controls.Add(RenderTable);
		ArrayList arrayList = null;
		IEnumerable enumerable;
		if (useDataSource)
		{
			enumerable = ((!IsBoundUsingDataSourceID) ? DataSourceResolver.ResolveDataSource(DataSource, DataMember) : GetData());
			if (enumerable == null)
			{
				Controls.Clear();
				return;
			}
			arrayList = DataKeysArray;
			arrayList.Clear();
		}
		else
		{
			enumerable = new NCollection(ViewState.GetInt("Items", 0));
		}
		paged_data_source = new PagedDataSource();
		PagedDataSource pagedDataSource = paged_data_source;
		pagedDataSource.AllowPaging = AllowPaging;
		pagedDataSource.AllowCustomPaging = AllowCustomPaging;
		pagedDataSource.DataSource = enumerable;
		pagedDataSource.CurrentPageIndex = CurrentPageIndex;
		pagedDataSource.PageSize = PageSize;
		pagedDataSource.VirtualCount = VirtualItemCount;
		if (pagedDataSource.IsPagingEnabled && pagedDataSource.PageCount < pagedDataSource.CurrentPageIndex)
		{
			Controls.Clear();
			throw new HttpException("Invalid DataGrid PageIndex");
		}
		ArrayList arrayList2 = CreateColumnSet(paged_data_source, useDataSource);
		if (arrayList2.Count == 0)
		{
			Controls.Clear();
			return;
		}
		Page?.RequiresPostBackScript();
		render_columns = new DataGridColumn[arrayList2.Count];
		for (int i = 0; i < arrayList2.Count; i++)
		{
			DataGridColumn dataGridColumn = (DataGridColumn)arrayList2[i];
			dataGridColumn.Set_Owner(this);
			dataGridColumn.Initialize();
			render_columns[i] = dataGridColumn;
		}
		if (pagedDataSource.IsPagingEnabled)
		{
			CreateItem(-1, -1, ListItemType.Pager, data_bind: false, null, pagedDataSource);
		}
		CreateItem(-1, -1, ListItemType.Header, useDataSource, null, pagedDataSource);
		if (items_list == null)
		{
			items_list = new ArrayList();
		}
		else
		{
			items_list.Clear();
		}
		bool flag = false;
		IEnumerator enumerator = null;
		if (data_enumerator == null)
		{
			enumerator = ((pagedDataSource.DataSource == null) ? null : pagedDataSource.GetEnumerator());
		}
		else
		{
			enumerator = data_enumerator;
			flag = true;
		}
		int num = 0;
		bool flag2 = true;
		string text = null;
		int num2 = pagedDataSource.FirstIndexInPage;
		int selectedIndex = SelectedIndex;
		int editItemIndex = EditItemIndex;
		while (enumerator != null && (flag || enumerator.MoveNext()))
		{
			if (flag2)
			{
				flag2 = false;
				text = DataKeyField;
				flag = false;
			}
			object current = enumerator.Current;
			if (useDataSource && text != "")
			{
				arrayList.Add(DataBinder.GetPropertyValue(current, text));
			}
			ListItemType type = ListItemType.Item;
			if (num == editItemIndex)
			{
				type = ListItemType.EditItem;
			}
			else if (num == selectedIndex)
			{
				type = ListItemType.SelectedItem;
			}
			else if (num % 2 != 0)
			{
				type = ListItemType.AlternatingItem;
			}
			items_list.Add(CreateItem(num, num2, type, useDataSource, current, pagedDataSource));
			num++;
			num2++;
		}
		CreateItem(-1, -1, ListItemType.Footer, useDataSource, null, paged_data_source);
		if (pagedDataSource.IsPagingEnabled)
		{
			CreateItem(-1, -1, ListItemType.Pager, data_bind: false, null, paged_data_source);
			if (useDataSource)
			{
				ViewState["Items"] = (pagedDataSource.IsCustomPagingEnabled ? num : pagedDataSource.DataSourceCount);
			}
		}
		else if (useDataSource)
		{
			ViewState["Items"] = num;
		}
	}

	private void ApplyColumnStyle(TableCellCollection cells, ListItemType type)
	{
		int num = Math.Min(cells.Count, render_columns.Length);
		if (num <= 0)
		{
			return;
		}
		for (int i = 0; i < num; i++)
		{
			Style style = null;
			TableCell tableCell = cells[i];
			DataGridColumn dataGridColumn = render_columns[i];
			if (!dataGridColumn.Visible)
			{
				tableCell.Visible = false;
				continue;
			}
			style = dataGridColumn.GetStyle(type);
			if (style != null)
			{
				tableCell.MergeStyle(style);
			}
		}
	}

	protected override void PrepareControlHierarchy()
	{
		if (!HasControls() || Controls.Count == 0)
		{
			return;
		}
		Table table = render_table;
		table.CopyBaseAttributes(this);
		table.ApplyStyle(ControlStyle);
		table.Caption = Caption;
		table.CaptionAlign = CaptionAlign;
		table.Enabled = IsEnabled;
		bool flag = true;
		foreach (DataGridItem row in table.Rows)
		{
			switch (row.ItemType)
			{
			case ListItemType.Item:
				ApplyItemStyle(row);
				break;
			case ListItemType.AlternatingItem:
				ApplyItemStyle(row);
				break;
			case ListItemType.EditItem:
				row.MergeStyle(edit_item_style);
				ApplyItemStyle(row);
				ApplyColumnStyle(row.Cells, ListItemType.EditItem);
				break;
			case ListItemType.Footer:
				if (!ShowFooter)
				{
					row.Visible = false;
					break;
				}
				if (footer_style != null)
				{
					row.MergeStyle(footer_style);
				}
				ApplyColumnStyle(row.Cells, ListItemType.Footer);
				break;
			case ListItemType.Header:
				if (!ShowHeader)
				{
					row.Visible = false;
					break;
				}
				if (header_style != null)
				{
					row.MergeStyle(header_style);
				}
				ApplyColumnStyle(row.Cells, ListItemType.Header);
				break;
			case ListItemType.SelectedItem:
				row.MergeStyle(selected_style);
				ApplyItemStyle(row);
				ApplyColumnStyle(row.Cells, ListItemType.SelectedItem);
				break;
			case ListItemType.Separator:
				ApplyColumnStyle(row.Cells, ListItemType.Separator);
				break;
			case ListItemType.Pager:
			{
				DataGridPagerStyle pagerStyle = PagerStyle;
				if (!pagerStyle.Visible || !paged_data_source.IsPagingEnabled)
				{
					row.Visible = false;
				}
				else
				{
					if (flag)
					{
						row.Visible = pagerStyle.Position != PagerPosition.Bottom;
					}
					else
					{
						row.Visible = pagerStyle.Position != PagerPosition.Top;
					}
					flag = false;
				}
				if (row.Visible)
				{
					row.MergeStyle(pager_style);
				}
				break;
			}
			}
		}
	}

	private void ApplyItemStyle(DataGridItem item)
	{
		if (item.ItemIndex % 2 != 0)
		{
			item.MergeStyle(alt_item_style);
		}
		item.MergeStyle(item_style);
		ApplyColumnStyle(item.Cells, ListItemType.Item);
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (!(e is DataGridCommandEventArgs { CommandName: var commandName } e2))
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
		else if (string.Compare(commandName, "Sort", ignoreCase: true, invariantCulture) == 0)
		{
			DataGridSortCommandEventArgs e3 = new DataGridSortCommandEventArgs(e2.CommandSource, e2);
			OnSortCommand(e3);
		}
		else if (string.Compare(commandName, "Update", ignoreCase: true, invariantCulture) == 0)
		{
			OnUpdateCommand(e2);
		}
		else if (string.Compare(commandName, "Page", ignoreCase: true, invariantCulture) == 0)
		{
			DataGridPageChangedEventArgs e4 = new DataGridPageChangedEventArgs(newPageIndex: (string.Compare((string)e2.CommandArgument, "Next", ignoreCase: true, invariantCulture) == 0) ? (CurrentPageIndex + 1) : ((string.Compare((string)e2.CommandArgument, "Prev", ignoreCase: true, invariantCulture) != 0) ? (int.Parse((string)e2.CommandArgument, invariantCulture) - 1) : (CurrentPageIndex - 1)), commandSource: e2.CommandSource);
			OnPageIndexChanged(e4);
		}
		return true;
	}

	protected virtual void OnCancelCommand(DataGridCommandEventArgs e)
	{
		((DataGridCommandEventHandler)Events[CancelCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnDeleteCommand(DataGridCommandEventArgs e)
	{
		((DataGridCommandEventHandler)Events[DeleteCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnEditCommand(DataGridCommandEventArgs e)
	{
		((DataGridCommandEventHandler)Events[EditCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemCommand(DataGridCommandEventArgs e)
	{
		((DataGridCommandEventHandler)Events[ItemCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemCreated(DataGridItemEventArgs e)
	{
		((DataGridItemEventHandler)Events[ItemCreatedEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemDataBound(DataGridItemEventArgs e)
	{
		((DataGridItemEventHandler)Events[ItemDataBoundEvent])?.Invoke(this, e);
	}

	protected virtual void OnPageIndexChanged(DataGridPageChangedEventArgs e)
	{
		((DataGridPageChangedEventHandler)Events[PageIndexChangedEvent])?.Invoke(this, e);
	}

	protected virtual void OnSortCommand(DataGridSortCommandEventArgs e)
	{
		((DataGridSortCommandEventHandler)Events[SortCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnUpdateCommand(DataGridCommandEventArgs e)
	{
		((DataGridCommandEventHandler)Events[UpdateCommandEvent])?.Invoke(this, e);
	}
}
