using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.UI.WebControls;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerChange")]
[ValidationProperty("Value")]
[ControlBuilder(typeof(HtmlSelectBuilder))]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlSelect : HtmlContainerControl, IPostBackDataHandler, IParserAccessor
{
	private static readonly object EventServerChange = new object();

	private DataSourceView _boundDataSourceView;

	private bool requiresDataBinding;

	private bool _initialized;

	private object datasource;

	private ListItemCollection items;

	[WebSysDescription("")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Data")]
	public virtual string DataMember
	{
		get
		{
			string text = Attributes["datamember"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("datamember");
			}
			else
			{
				Attributes["datamember"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual object DataSource
	{
		get
		{
			return datasource;
		}
		set
		{
			if (value != null && !(value is IEnumerable) && !(value is IListSource))
			{
				throw new ArgumentException();
			}
			datasource = value;
		}
	}

	[DefaultValue("")]
	public virtual string DataSourceID
	{
		get
		{
			return ViewState.GetString("DataSourceID", "");
		}
		set
		{
			if (!(DataSourceID == value))
			{
				ViewState["DataSourceID"] = value;
				if (_boundDataSourceView != null)
				{
					_boundDataSourceView.DataSourceViewChanged -= OnDataSourceViewChanged;
				}
				_boundDataSourceView = null;
				OnDataPropertyChanged();
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Data")]
	[DefaultValue("")]
	public virtual string DataTextField
	{
		get
		{
			string text = Attributes["datatextfield"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("datatextfield");
			}
			else
			{
				Attributes["datatextfield"] = value;
			}
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual string DataValueField
	{
		get
		{
			string text = Attributes["datavaluefield"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("datavaluefield");
			}
			else
			{
				Attributes["datavaluefield"] = value;
			}
		}
	}

	public override string InnerHtml
	{
		get
		{
			throw new NotSupportedException();
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	public override string InnerText
	{
		get
		{
			throw new NotSupportedException();
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	protected bool IsBoundUsingDataSourceID => DataSourceID.Length != 0;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ListItemCollection Items
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

	[WebCategory("Behavior")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public bool Multiple
	{
		get
		{
			if (Attributes["multiple"] == null)
			{
				return false;
			}
			return true;
		}
		set
		{
			if (!value)
			{
				Attributes.Remove("multiple");
			}
			else
			{
				Attributes["multiple"] = "multiple";
			}
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Name
	{
		get
		{
			return UniqueID;
		}
		set
		{
		}
	}

	protected bool RequiresDataBinding
	{
		get
		{
			return requiresDataBinding;
		}
		set
		{
			requiresDataBinding = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual int SelectedIndex
	{
		get
		{
			ListItemCollection listItemCollection = Items;
			for (int i = 0; i < listItemCollection.Count; i++)
			{
				if (listItemCollection[i].Selected)
				{
					return i;
				}
			}
			if (!Multiple && Size <= 1)
			{
				if (listItemCollection.Count > 0)
				{
					listItemCollection[0].Selected = true;
				}
				return 0;
			}
			return -1;
		}
		set
		{
			ClearSelection();
			if (value != -1 && items != null)
			{
				if (value < 0 || value >= items.Count)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				items[value].Selected = true;
			}
		}
	}

	protected virtual int[] SelectedIndices
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			int count = Items.Count;
			for (int i = 0; i < count; i++)
			{
				if (Items[i].Selected)
				{
					arrayList.Add(i);
				}
			}
			return (int[])arrayList.ToArray(typeof(int));
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int Size
	{
		get
		{
			string text = Attributes["size"];
			if (text == null)
			{
				return -1;
			}
			return int.Parse(text, Helpers.InvariantCulture);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("size");
			}
			else
			{
				Attributes["size"] = value.ToString();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Value
	{
		get
		{
			int selectedIndex = SelectedIndex;
			if (selectedIndex >= 0 && selectedIndex < Items.Count)
			{
				return Items[selectedIndex].Value;
			}
			return string.Empty;
		}
		set
		{
			int num = Items.IndexOf(value);
			if (num >= 0)
			{
				SelectedIndex = num;
			}
		}
	}

	private bool IsDataBound
	{
		get
		{
			return ViewState.GetBool("_DataBound", def: false);
		}
		set
		{
			ViewState["_DataBound"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event EventHandler ServerChange
	{
		add
		{
			Events.AddHandler(EventServerChange, value);
		}
		remove
		{
			Events.RemoveHandler(EventServerChange, value);
		}
	}

	public HtmlSelect()
		: base("select")
	{
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (!(obj is ListItem))
		{
			throw new HttpException("HtmlSelect can only contain ListItem");
		}
		Items.Add((ListItem)obj);
		base.AddParsedSubObject(obj);
	}

	protected virtual void ClearSelection()
	{
		if (items != null)
		{
			int count = items.Count;
			for (int i = 0; i < count; i++)
			{
				items[i].Selected = false;
			}
		}
	}

	protected override ControlCollection CreateControlCollection()
	{
		return base.CreateControlCollection();
	}

	protected void EnsureDataBound()
	{
		if (IsBoundUsingDataSourceID && RequiresDataBinding)
		{
			DataBind();
		}
	}

	protected virtual IEnumerable GetData()
	{
		if (DataSource != null && IsBoundUsingDataSourceID)
		{
			throw new HttpException("Control bound using both DataSourceID and DataSource properties.");
		}
		if (DataSource != null)
		{
			return DataSourceResolver.ResolveDataSource(DataSource, DataMember);
		}
		if (!IsBoundUsingDataSourceID)
		{
			return null;
		}
		IEnumerable result = null;
		ConnectToDataSource().Select(DataSourceSelectArguments.Empty, (IEnumerable data) =>
		{
			result = data;
		});
		return result;
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

	protected override void OnDataBinding(EventArgs e)
	{
		base.OnDataBinding(e);
		ListItemCollection listItemCollection = Items;
		listItemCollection.Clear();
		IEnumerable data = GetData();
		if (data == null)
		{
			return;
		}
		foreach (object item2 in data)
		{
			string text = null;
			string text2 = null;
			if (DataTextField == string.Empty && DataValueField == string.Empty)
			{
				text = item2.ToString();
				text2 = text;
			}
			else
			{
				if (DataTextField != string.Empty)
				{
					text = DataBinder.Eval(item2, DataTextField).ToString();
				}
				text2 = ((!(DataValueField != string.Empty)) ? text : DataBinder.Eval(item2, DataValueField).ToString());
				if (text == null && text2 != null)
				{
					text = text2;
				}
			}
			if (text == null)
			{
				text = string.Empty;
			}
			if (text2 == null)
			{
				text2 = string.Empty;
			}
			ListItem item = new ListItem(text, text2);
			listItemCollection.Add(item);
		}
		RequiresDataBinding = false;
		IsDataBound = true;
	}

	protected virtual void OnDataPropertyChanged()
	{
		if (_initialized)
		{
			RequiresDataBinding = true;
		}
	}

	protected virtual void OnDataSourceViewChanged(object sender, EventArgs e)
	{
		RequiresDataBinding = true;
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		Page.PreLoad += OnPagePreLoad;
	}

	protected virtual void OnPagePreLoad(object sender, EventArgs e)
	{
		Initialize();
	}

	protected internal override void OnLoad(EventArgs e)
	{
		if (!_initialized)
		{
			Initialize();
		}
		base.OnLoad(e);
	}

	private void Initialize()
	{
		_initialized = true;
		if (!IsDataBound)
		{
			RequiresDataBinding = true;
		}
		if (IsBoundUsingDataSourceID)
		{
			ConnectToDataSource();
		}
	}

	private DataSourceView ConnectToDataSource()
	{
		if (_boundDataSourceView != null)
		{
			return _boundDataSourceView;
		}
		object obj = null;
		Page page = Page;
		if (page != null)
		{
			obj = page.FindControl(DataSourceID);
		}
		if (obj == null || !(obj is IDataSource))
		{
			string format = ((obj != null) ? "DataSourceID of '{0}' must be the ID of a control of type IDataSource.  '{1}' is not an IDataSource." : "DataSourceID of '{0}' must be the ID of a control of type IDataSource.  A control with ID '{1}' could not be found.");
			throw new HttpException(string.Format(format, ID, DataSourceID));
		}
		_boundDataSourceView = ((IDataSource)obj).GetView(string.Empty);
		_boundDataSourceView.DataSourceViewChanged += OnDataSourceViewChanged;
		return _boundDataSourceView;
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		EnsureDataBound();
		base.OnPreRender(e);
		Page page = Page;
		if (page != null && !Disabled)
		{
			page.RegisterRequiresPostBack(this);
			page.RegisterEnabledControl(this);
		}
	}

	protected virtual void OnServerChange(EventArgs e)
	{
		((EventHandler)Events[EventServerChange])?.Invoke(this, e);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		Page?.ClientScript.RegisterForEventValidation(UniqueID);
		writer.WriteAttribute("name", Name);
		Attributes.Remove("name");
		Attributes.Remove("datamember");
		Attributes.Remove("datatextfield");
		Attributes.Remove("datavaluefield");
		base.RenderAttributes(writer);
	}

	protected internal override void RenderChildren(HtmlTextWriter writer)
	{
		base.RenderChildren(writer);
		if (items == null)
		{
			return;
		}
		writer.WriteLine();
		bool flag = false;
		int count = items.Count;
		for (int i = 0; i < count; i++)
		{
			ListItem listItem = items[i];
			writer.Indent++;
			writer.WriteBeginTag("option");
			if (listItem.Selected && !flag)
			{
				writer.WriteAttribute("selected", "selected");
				if (!Multiple)
				{
					flag = true;
				}
			}
			writer.WriteAttribute("value", listItem.Value, fEncode: true);
			if (listItem.HasAttributes)
			{
				AttributeCollection attributes = listItem.Attributes;
				foreach (string key in attributes.Keys)
				{
					writer.WriteAttribute(key, HttpUtility.HtmlAttributeEncode(attributes[key]));
				}
			}
			writer.Write('>');
			writer.Write(HttpUtility.HtmlEncode(listItem.Text));
			writer.WriteEndTag("option");
			writer.WriteLine();
			writer.Indent--;
		}
	}

	protected override object SaveViewState()
	{
		object obj = null;
		object obj2 = null;
		obj = base.SaveViewState();
		IStateManager stateManager = items;
		if (stateManager != null)
		{
			obj2 = stateManager.SaveViewState();
		}
		if (obj == null && obj2 == null)
		{
			return null;
		}
		return new Pair(obj, obj2);
	}

	protected virtual void Select(int[] selectedIndices)
	{
		if (items == null)
		{
			return;
		}
		ClearSelection();
		int count = items.Count;
		foreach (int num in selectedIndices)
		{
			if (num >= 0 && num < count)
			{
				items[num].Selected = true;
			}
		}
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		((IStateManager)items)?.TrackViewState();
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		OnServerChange(EventArgs.Empty);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		string[] values = postCollection.GetValues(postDataKey);
		bool flag = false;
		if (values != null)
		{
			if (Multiple)
			{
				int num = values.Length;
				int[] selectedIndices = SelectedIndices;
				int[] array = new int[num];
				int num2 = selectedIndices.Length;
				for (int i = 0; i < num; i++)
				{
					array[i] = Items.IndexOf(values[i]);
					if (num2 != num || selectedIndices[i] != array[i])
					{
						flag = true;
					}
				}
				if (flag)
				{
					Select(array);
				}
			}
			else
			{
				int num3 = Items.IndexOf(values[0]);
				if (num3 != SelectedIndex)
				{
					SelectedIndex = num3;
					flag = true;
				}
			}
		}
		if (flag)
		{
			ValidateEvent(postDataKey, string.Empty);
		}
		return flag;
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}
}
