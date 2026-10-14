using System.Collections;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

[DefaultEvent("SelectedIndexChanged")]
[ParseChildren(true, "Items")]
[ControlValueProperty("SelectedValue", null)]
[DataBindingHandler("System.Web.UI.Design.WebControls.ListControlDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[Designer("System.Web.UI.Design.WebControls.ListControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public abstract class ListControl : DataBoundControl, IEditableTextControl, ITextControl
{
	private static readonly object SelectedIndexChangedEvent = new object();

	private static readonly object TextChangedEvent = new object();

	private ListItemCollection items;

	private int _selectedIndex = -2;

	private string _selectedValue;

	[Themeable(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue(false)]
	public virtual bool AppendDataBoundItems
	{
		get
		{
			return ViewState.GetBool("AppendDataBoundItems", def: false);
		}
		set
		{
			ViewState["AppendDataBoundItems"] = value;
			if (Initialized)
			{
				RequiresDataBinding = true;
			}
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(false)]
	[Themeable(false)]
	public virtual bool AutoPostBack
	{
		get
		{
			return ViewState.GetBool("AutoPostBack", def: false);
		}
		set
		{
			ViewState["AutoPostBack"] = value;
		}
	}

	[WebCategory("Data")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[Themeable(false)]
	public virtual string DataTextField
	{
		get
		{
			return ViewState.GetString("DataTextField", string.Empty);
		}
		set
		{
			ViewState["DataTextField"] = value;
			if (Initialized)
			{
				RequiresDataBinding = true;
			}
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Data")]
	[Themeable(false)]
	public virtual string DataTextFormatString
	{
		get
		{
			return ViewState.GetString("DataTextFormatString", string.Empty);
		}
		set
		{
			ViewState["DataTextFormatString"] = value;
			if (Initialized)
			{
				RequiresDataBinding = true;
			}
		}
	}

	[Themeable(false)]
	[WebSysDescription("")]
	[DefaultValue("")]
	[WebCategory("Data")]
	public virtual string DataValueField
	{
		get
		{
			return ViewState.GetString("DataValueField", string.Empty);
		}
		set
		{
			ViewState["DataValueField"] = value;
			if (Initialized)
			{
				RequiresDataBinding = true;
			}
		}
	}

	[MergableProperty(false)]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DefaultValue(null)]
	[Editor("System.Web.UI.Design.WebControls.ListItemsCollectionEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual ListItemCollection Items
	{
		get
		{
			if (items == null)
			{
				items = new ListItemCollection();
				if (IsTrackingViewState)
				{
					((IStateManager)items).TrackViewState();
				}
			}
			return items;
		}
	}

	[Themeable(false)]
	[WebCategory("Misc")]
	[DefaultValue(0)]
	[Browsable(false)]
	[Bindable(true)]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual int SelectedIndex
	{
		get
		{
			if (items == null)
			{
				return -1;
			}
			for (int i = 0; i < items.Count; i++)
			{
				if (items[i].Selected)
				{
					return i;
				}
			}
			return -1;
		}
		set
		{
			_selectedIndex = value;
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			if (value < Items.Count)
			{
				ClearSelection();
				if (value != -1)
				{
					items[value].Selected = true;
				}
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual ListItem SelectedItem
	{
		get
		{
			int selectedIndex = SelectedIndex;
			if (selectedIndex == -1)
			{
				return null;
			}
			return Items[selectedIndex];
		}
	}

	[Bindable(true, BindingDirection.TwoWay)]
	[Themeable(false)]
	[Browsable(false)]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual string SelectedValue
	{
		get
		{
			int selectedIndex = SelectedIndex;
			if (selectedIndex == -1)
			{
				return string.Empty;
			}
			return Items[selectedIndex].Value;
		}
		set
		{
			_selectedValue = value;
			SetSelectedValue(value);
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
	[WebCategory("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[WebSysDescription("")]
	public virtual string Text
	{
		get
		{
			return SelectedValue;
		}
		set
		{
			SelectedValue = value;
		}
	}

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Select;

	[WebCategory("Behavior")]
	[Themeable(false)]
	[WebSysDescription("")]
	[DefaultValue(false)]
	public virtual bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: false);
		}
		set
		{
			ViewState["CausesValidation"] = value;
		}
	}

	[Themeable(false)]
	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", "");
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event EventHandler SelectedIndexChanged
	{
		add
		{
			Events.AddHandler(SelectedIndexChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SelectedIndexChangedEvent, value);
		}
	}

	public event EventHandler TextChanged
	{
		add
		{
			Events.AddHandler(TextChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(TextChangedEvent, value);
		}
	}

	public ListControl()
		: base(HtmlTextWriterTag.Select)
	{
	}

	private bool SetSelectedValue(string value)
	{
		if (items != null && items.Count > 0)
		{
			int count = items.Count;
			ListItemCollection listItemCollection = Items;
			for (int i = 0; i < count; i++)
			{
				if (listItemCollection[i].Value == value)
				{
					ClearSelection();
					listItemCollection[i].Selected = true;
					return true;
				}
			}
		}
		return false;
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
	}

	public virtual void ClearSelection()
	{
		if (items != null)
		{
			int count = Items.Count;
			for (int i = 0; i < count; i++)
			{
				items[i].Selected = false;
			}
		}
	}

	protected override void OnDataBinding(EventArgs e)
	{
		base.OnDataBinding(e);
		IEnumerable data = GetData().ExecuteSelect(DataSourceSelectArguments.Empty);
		InternalPerformDataBinding(data);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		if (page != null && IsEnabled)
		{
			page.RegisterEnabledControl(this);
		}
	}

	protected virtual void OnTextChanged(EventArgs e)
	{
		((EventHandler)Events[TextChangedEvent])?.Invoke(this, e);
	}

	protected internal override void PerformDataBinding(IEnumerable dataSource)
	{
		if (dataSource != null)
		{
			if (!AppendDataBoundItems)
			{
				Items.Clear();
			}
			string text = DataTextFormatString;
			if (text.Length == 0)
			{
				text = null;
			}
			string text2 = DataTextField;
			string text3 = DataValueField;
			if (text2.Length == 0)
			{
				text2 = null;
			}
			if (text3.Length == 0)
			{
				text3 = null;
			}
			ListItemCollection listItemCollection = Items;
			foreach (object item in dataSource)
			{
				string text5;
				string text4 = (text5 = null);
				if (text2 != null)
				{
					text4 = DataBinder.GetPropertyValue(item, text2, text);
				}
				if (text3 != null)
				{
					text5 = DataBinder.GetPropertyValue(item, text3).ToString();
				}
				else if (text2 == null)
				{
					text4 = (text5 = item.ToString());
					if (text != null)
					{
						text4 = string.Format(text, item);
					}
				}
				else if (text4 != null)
				{
					text5 = text4;
				}
				if (text4 == null)
				{
					text4 = text5;
				}
				listItemCollection.Add(new ListItem(text4, text5));
			}
		}
		if (!string.IsNullOrEmpty(_selectedValue))
		{
			if (!SetSelectedValue(_selectedValue))
			{
				throw new ArgumentOutOfRangeException("value", $"'{ID}' has a SelectedValue which is invalid because it does not exist in the list of items.");
			}
			if (_selectedIndex >= 0 && _selectedIndex != SelectedIndex)
			{
				throw new ArgumentException("SelectedIndex and SelectedValue are mutually exclusive.");
			}
		}
		else if (_selectedIndex >= 0)
		{
			SelectedIndex = _selectedIndex;
		}
	}

	[MonoTODO("why override?")]
	protected override void PerformSelect()
	{
		OnDataBinding(EventArgs.Empty);
		RequiresDataBinding = false;
		MarkAsDataBound();
		OnDataBound(EventArgs.Empty);
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		bool flag = false;
		Page page = Page;
		for (int i = 0; i < Items.Count; i++)
		{
			ListItem listItem = Items[i];
			page?.ClientScript.RegisterForEventValidation(UniqueID, listItem.Value);
			writer.WriteBeginTag("option");
			if (listItem.Selected)
			{
				if (flag)
				{
					VerifyMultiSelect();
				}
				writer.WriteAttribute("selected", "selected", fEncode: false);
				flag = true;
			}
			writer.WriteAttribute("value", listItem.Value, fEncode: true);
			if (listItem.HasAttributes)
			{
				listItem.Attributes.Render(writer);
			}
			writer.Write(">");
			string value = HttpUtility.HtmlEncode(listItem.Text);
			writer.Write(value);
			writer.WriteEndTag("option");
			writer.WriteLine();
		}
	}

	internal ArrayList GetSelectedIndicesInternal()
	{
		ArrayList arrayList = null;
		int count;
		if (items != null && (count = items.Count) > 0)
		{
			arrayList = new ArrayList();
			for (int i = 0; i < count; i++)
			{
				if (items[i].Selected)
				{
					arrayList.Add(i);
				}
			}
		}
		return arrayList;
	}

	protected override object SaveViewState()
	{
		object y = null;
		object x = base.SaveViewState();
		IStateManager stateManager = items;
		if (stateManager != null)
		{
			y = stateManager.SaveViewState();
		}
		return new Pair(x, y);
	}

	protected override void LoadViewState(object savedState)
	{
		object savedState2 = null;
		object obj = null;
		if (savedState is Pair pair)
		{
			savedState2 = pair.First;
			obj = pair.Second;
		}
		base.LoadViewState(savedState2);
		if (obj != null)
		{
			((IStateManager)Items).LoadViewState(obj);
		}
	}

	[MonoTODO("Not implemented")]
	protected void SetPostDataSelection(int selectedIndex)
	{
		throw new NotImplementedException();
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		((IStateManager)items)?.TrackViewState();
	}

	protected virtual void OnSelectedIndexChanged(EventArgs e)
	{
		((EventHandler)Events[SelectedIndexChangedEvent])?.Invoke(this, e);
	}

	protected internal virtual void VerifyMultiSelect()
	{
		if (!MultiSelectOk())
		{
			throw new HttpException("Multi select is not supported");
		}
	}

	internal virtual bool MultiSelectOk()
	{
		return false;
	}
}
