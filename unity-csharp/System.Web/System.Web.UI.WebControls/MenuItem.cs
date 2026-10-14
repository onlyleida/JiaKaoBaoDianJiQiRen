using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Text;

namespace System.Web.UI.WebControls;

[ParseChildren(true, "ChildItems")]
public sealed class MenuItem : IStateManager, ICloneable
{
	private StateBag ViewState = new StateBag();

	private MenuItemCollection items;

	private bool marked;

	private Menu menu;

	private MenuItem parent;

	private int index;

	private string path;

	private int depth = -1;

	private object dataItem;

	private IHierarchyData hierarchyData;

	private bool gotBinding;

	private MenuItemBinding binding;

	private PropertyDescriptorCollection boundProperties;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int Depth
	{
		get
		{
			if (depth != -1)
			{
				return depth;
			}
			if (Parent == null)
			{
				depth = 0;
			}
			else
			{
				depth = Parent.Depth + 1;
			}
			return depth;
		}
	}

	internal Menu Menu
	{
		get
		{
			return menu;
		}
		set
		{
			menu = value;
			if (items != null)
			{
				items.SetMenu(menu);
			}
			ResetPathData();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(false)]
	public bool DataBound
	{
		get
		{
			if (ViewState["DataBound"] != null)
			{
				return (bool)ViewState["DataBound"];
			}
			return false;
		}
		private set
		{
			ViewState["DataBound"] = value;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	public object DataItem
	{
		get
		{
			if (!DataBound)
			{
				throw new InvalidOperationException("MenuItem is not data bound.");
			}
			return dataItem;
		}
	}

	[Browsable(false)]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string DataPath
	{
		get
		{
			if (ViewState["DataPath"] != null)
			{
				return (string)ViewState["DataPath"];
			}
			return string.Empty;
		}
		private set
		{
			ViewState["DataPath"] = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[Browsable(false)]
	[MergableProperty(false)]
	public MenuItemCollection ChildItems
	{
		get
		{
			if (items == null)
			{
				items = new MenuItemCollection(this);
				if (((IStateManager)this).IsTrackingViewState)
				{
					((IStateManager)items).TrackViewState();
				}
			}
			return items;
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[UrlProperty]
	[DefaultValue("")]
	public string ImageUrl
	{
		get
		{
			if (ViewState["ImageUrl"] != null)
			{
				return (string)ViewState["ImageUrl"];
			}
			return string.Empty;
		}
		set
		{
			ViewState["ImageUrl"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string NavigateUrl
	{
		get
		{
			if (ViewState["NavigateUrl"] != null)
			{
				return (string)ViewState["NavigateUrl"];
			}
			return string.Empty;
		}
		set
		{
			ViewState["NavigateUrl"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string PopOutImageUrl
	{
		get
		{
			if (ViewState["PopOutImageUrl"] != null)
			{
				return (string)ViewState["PopOutImageUrl"];
			}
			return string.Empty;
		}
		set
		{
			ViewState["PopOutImageUrl"] = value;
		}
	}

	[DefaultValue("")]
	public string Target
	{
		get
		{
			if (ViewState["Target"] != null)
			{
				return (string)ViewState["Target"];
			}
			return string.Empty;
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			object obj = ViewState["Text"];
			if (obj == null)
			{
				obj = ViewState["Value"];
			}
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["Text"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public string ToolTip
	{
		get
		{
			if (ViewState["ToolTip"] != null)
			{
				return (string)ViewState["ToolTip"];
			}
			return string.Empty;
		}
		set
		{
			ViewState["ToolTip"] = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public string Value
	{
		get
		{
			object obj = ViewState["Value"];
			if (obj == null)
			{
				obj = ViewState["Text"];
			}
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["Value"] = value;
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[UrlProperty]
	[DefaultValue("")]
	public string SeparatorImageUrl
	{
		get
		{
			if (ViewState["SeparatorImageUrl"] != null)
			{
				return (string)ViewState["SeparatorImageUrl"];
			}
			return string.Empty;
		}
		set
		{
			ViewState["SeparatorImageUrl"] = value;
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	public bool Selectable
	{
		get
		{
			if (ViewState["Selectable"] != null)
			{
				return (bool)ViewState["Selectable"];
			}
			return true;
		}
		set
		{
			ViewState["Selectable"] = value;
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	public bool Enabled
	{
		get
		{
			if (ViewState["Enabled"] != null)
			{
				return (bool)ViewState["Enabled"];
			}
			return true;
		}
		set
		{
			ViewState["Enabled"] = value;
		}
	}

	internal bool BranchEnabled
	{
		get
		{
			if (Enabled)
			{
				if (parent != null)
				{
					return parent.BranchEnabled;
				}
				return true;
			}
			return false;
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	public bool Selected
	{
		get
		{
			if (menu != null)
			{
				return menu.SelectedItem == this;
			}
			return false;
		}
		set
		{
			if (menu != null)
			{
				if (!value && menu.SelectedItem == this)
				{
					menu.SetSelectedItem(null);
				}
				else if (value)
				{
					menu.SetSelectedItem(this);
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public MenuItem Parent => parent;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string ValuePath
	{
		get
		{
			if (menu == null)
			{
				return Value;
			}
			StringBuilder stringBuilder = new StringBuilder(Value);
			for (MenuItem menuItem = parent; menuItem != null; menuItem = menuItem.Parent)
			{
				stringBuilder.Insert(0, menu.PathSeparator);
				stringBuilder.Insert(0, menuItem.Value);
			}
			return stringBuilder.ToString();
		}
	}

	internal int Index
	{
		get
		{
			return index;
		}
		set
		{
			index = value;
			ResetPathData();
		}
	}

	internal string Path
	{
		get
		{
			if (path != null)
			{
				return path;
			}
			StringBuilder stringBuilder = new StringBuilder(index.ToString());
			for (MenuItem menuItem = parent; menuItem != null; menuItem = menuItem.Parent)
			{
				stringBuilder.Insert(0, '_');
				stringBuilder.Insert(0, menuItem.Index.ToString());
			}
			path = stringBuilder.ToString();
			return path;
		}
	}

	internal bool HasChildData => items != null;

	bool IStateManager.IsTrackingViewState => marked;

	public MenuItem()
	{
	}

	public MenuItem(string text)
	{
		Text = text;
	}

	public MenuItem(string text, string value)
	{
		Text = text;
		Value = value;
	}

	public MenuItem(string text, string value, string imageUrl)
	{
		Text = text;
		Value = value;
		ImageUrl = imageUrl;
	}

	public MenuItem(string text, string value, string imageUrl, string navigateUrl)
	{
		Text = text;
		Value = value;
		ImageUrl = imageUrl;
		NavigateUrl = navigateUrl;
	}

	public MenuItem(string text, string value, string imageUrl, string navigateUrl, string target)
	{
		Text = text;
		Value = value;
		ImageUrl = imageUrl;
		NavigateUrl = navigateUrl;
		Target = target;
	}

	private void ResetPathData()
	{
		path = null;
		depth = -1;
		gotBinding = false;
	}

	internal void SetParent(MenuItem item)
	{
		parent = item;
		ResetPathData();
	}

	void IStateManager.LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			ViewState.LoadViewState(array[0]);
			if (array[1] != null)
			{
				((IStateManager)ChildItems).LoadViewState(array[1]);
			}
		}
	}

	object IStateManager.SaveViewState()
	{
		object[] array = new object[2]
		{
			ViewState.SaveViewState(),
			(items == null) ? null : ((IStateManager)items).SaveViewState()
		};
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] != null)
			{
				return array;
			}
		}
		return null;
	}

	void IStateManager.TrackViewState()
	{
		if (!marked)
		{
			marked = true;
			ViewState.TrackViewState();
			if (items != null)
			{
				((IStateManager)items).TrackViewState();
			}
		}
	}

	internal void SetDirty()
	{
		ViewState.SetDirty(dirty: true);
		if (items != null)
		{
			items.SetDirty();
		}
	}

	object ICloneable.Clone()
	{
		MenuItem menuItem = new MenuItem();
		foreach (DictionaryEntry item in ViewState)
		{
			menuItem.ViewState[(string)item.Key] = item.Value;
		}
		foreach (ICloneable childItem in ChildItems)
		{
			menuItem.ChildItems.Add((MenuItem)childItem.Clone());
		}
		return menuItem;
	}

	internal void Bind(IHierarchyData hierarchyData)
	{
		this.hierarchyData = hierarchyData;
		DataBound = true;
		DataPath = hierarchyData.Path;
		dataItem = hierarchyData.Item;
		MenuItemBinding menuItemBinding = GetBinding();
		if (menuItemBinding != null)
		{
			if (menuItemBinding.EnabledField != "")
			{
				try
				{
					Enabled = Convert.ToBoolean(GetBoundPropertyValue(menuItemBinding.EnabledField));
				}
				catch
				{
					Enabled = menuItemBinding.Enabled;
				}
			}
			else
			{
				Enabled = menuItemBinding.Enabled;
			}
			if (menuItemBinding.ImageUrlField.Length > 0)
			{
				ImageUrl = Convert.ToString(GetBoundPropertyValue(menuItemBinding.ImageUrlField));
				if (ImageUrl.Length == 0)
				{
					ImageUrl = menuItemBinding.ImageUrl;
				}
			}
			else if (menuItemBinding.ImageUrl.Length > 0)
			{
				ImageUrl = menuItemBinding.ImageUrl;
			}
			if (menuItemBinding.NavigateUrlField.Length > 0)
			{
				NavigateUrl = Convert.ToString(GetBoundPropertyValue(menuItemBinding.NavigateUrlField));
				if (NavigateUrl.Length == 0)
				{
					NavigateUrl = menuItemBinding.NavigateUrl;
				}
			}
			else if (menuItemBinding.NavigateUrl.Length > 0)
			{
				NavigateUrl = menuItemBinding.NavigateUrl;
			}
			if (menuItemBinding.PopOutImageUrlField.Length > 0)
			{
				PopOutImageUrl = Convert.ToString(GetBoundPropertyValue(menuItemBinding.PopOutImageUrlField));
				if (PopOutImageUrl.Length == 0)
				{
					PopOutImageUrl = menuItemBinding.PopOutImageUrl;
				}
			}
			else if (menuItemBinding.PopOutImageUrl.Length > 0)
			{
				PopOutImageUrl = menuItemBinding.PopOutImageUrl;
			}
			if (menuItemBinding.SelectableField != "")
			{
				try
				{
					Selectable = Convert.ToBoolean(GetBoundPropertyValue(menuItemBinding.SelectableField));
				}
				catch
				{
					Selectable = menuItemBinding.Selectable;
				}
			}
			else
			{
				Selectable = menuItemBinding.Selectable;
			}
			if (menuItemBinding.SeparatorImageUrlField.Length > 0)
			{
				SeparatorImageUrl = Convert.ToString(GetBoundPropertyValue(menuItemBinding.SeparatorImageUrlField));
				if (SeparatorImageUrl.Length == 0)
				{
					SeparatorImageUrl = menuItemBinding.SeparatorImageUrl;
				}
			}
			else if (menuItemBinding.SeparatorImageUrl.Length > 0)
			{
				SeparatorImageUrl = menuItemBinding.SeparatorImageUrl;
			}
			if (menuItemBinding.TargetField.Length > 0)
			{
				Target = Convert.ToString(GetBoundPropertyValue(menuItemBinding.TargetField));
				if (Target.Length == 0)
				{
					Target = menuItemBinding.Target;
				}
			}
			else if (menuItemBinding.Target.Length > 0)
			{
				Target = menuItemBinding.Target;
			}
			if (menuItemBinding.ToolTipField.Length > 0)
			{
				ToolTip = Convert.ToString(GetBoundPropertyValue(menuItemBinding.ToolTipField));
				if (ToolTip.Length == 0)
				{
					ToolTip = menuItemBinding.ToolTip;
				}
			}
			else if (menuItemBinding.ToolTip.Length > 0)
			{
				ToolTip = menuItemBinding.ToolTip;
			}
			string value = null;
			if (menuItemBinding.ValueField.Length > 0)
			{
				value = Convert.ToString(GetBoundPropertyValue(menuItemBinding.ValueField));
			}
			if (string.IsNullOrEmpty(value))
			{
				if (menuItemBinding.Value.Length > 0)
				{
					value = menuItemBinding.Value;
				}
				else
				{
					value = ((menuItemBinding.Text.Length <= 0) ? string.Empty : menuItemBinding.Text);
				}
			}
			Value = value;
			string text = null;
			if (menuItemBinding.TextField.Length > 0)
			{
				text = Convert.ToString(GetBoundPropertyValue(menuItemBinding.TextField));
				if (menuItemBinding.FormatString.Length > 0)
				{
					text = string.Format(menuItemBinding.FormatString, text);
				}
			}
			if (string.IsNullOrEmpty(text))
			{
				if (menuItemBinding.Text.Length > 0)
				{
					text = menuItemBinding.Text;
				}
				else
				{
					text = ((menuItemBinding.Value.Length <= 0) ? string.Empty : menuItemBinding.Value);
				}
			}
			Text = text;
		}
		else
		{
			string text2 = (Value = GetDefaultBoundText());
			Text = text2;
		}
		if (hierarchyData is INavigateUIData navigateUIData)
		{
			ToolTip = navigateUIData.Description;
			Text = navigateUIData.ToString();
			NavigateUrl = navigateUIData.NavigateUrl;
		}
	}

	internal void SetDataItem(object item)
	{
		dataItem = item;
	}

	internal void SetDataPath(string path)
	{
		DataPath = path;
	}

	internal void SetDataBound(bool bound)
	{
		DataBound = bound;
	}

	private string GetDefaultBoundText()
	{
		if (hierarchyData != null)
		{
			return hierarchyData.ToString();
		}
		if (dataItem != null)
		{
			return dataItem.ToString();
		}
		return string.Empty;
	}

	private string GetDataItemType()
	{
		if (hierarchyData != null)
		{
			return hierarchyData.Type;
		}
		if (dataItem != null)
		{
			return dataItem.GetType().ToString();
		}
		return string.Empty;
	}

	private MenuItemBinding GetBinding()
	{
		if (menu == null)
		{
			return null;
		}
		if (gotBinding)
		{
			return binding;
		}
		binding = menu.FindBindingForItem(GetDataItemType(), Depth);
		gotBinding = true;
		return binding;
	}

	private object GetBoundPropertyValue(string name)
	{
		if (boundProperties == null)
		{
			if (hierarchyData != null)
			{
				boundProperties = TypeDescriptor.GetProperties(hierarchyData);
			}
			else
			{
				boundProperties = TypeDescriptor.GetProperties(dataItem);
			}
		}
		PropertyDescriptor propertyDescriptor = boundProperties.Find(name, ignoreCase: true);
		if (propertyDescriptor == null)
		{
			throw new InvalidOperationException("Property '" + name + "' not found in data bound item");
		}
		if (hierarchyData != null)
		{
			return propertyDescriptor.GetValue(hierarchyData);
		}
		return propertyDescriptor.GetValue(dataItem);
	}
}
