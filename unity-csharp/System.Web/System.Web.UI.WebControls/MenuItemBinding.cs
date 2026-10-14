using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace System.Web.UI.WebControls;

[DefaultProperty("TextField")]
public sealed class MenuItemBinding : IStateManager, ICloneable, IDataSourceViewSchemaAccessor
{
	private StateBag ViewState = new StateBag();

	[DefaultValue("")]
	public string DataMember
	{
		get
		{
			return ViewState.GetString("DataMember", string.Empty);
		}
		set
		{
			ViewState["DataMember"] = value;
		}
	}

	[DefaultValue(-1)]
	public int Depth
	{
		get
		{
			return ViewState.GetInt("Depth", -1);
		}
		set
		{
			ViewState["Depth"] = value;
		}
	}

	[DefaultValue(true)]
	public bool Enabled
	{
		get
		{
			return ViewState.GetBool("Enabled", def: true);
		}
		set
		{
			ViewState["Enabled"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string EnabledField
	{
		get
		{
			return ViewState.GetString("EnabledField", string.Empty);
		}
		set
		{
			ViewState["EnabledField"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public string FormatString
	{
		get
		{
			return ViewState.GetString("FormatString", string.Empty);
		}
		set
		{
			ViewState["FormatString"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string ImageUrl
	{
		get
		{
			return ViewState.GetString("ImageUrl", string.Empty);
		}
		set
		{
			ViewState["ImageUrl"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string ImageUrlField
	{
		get
		{
			return ViewState.GetString("ImageUrlField", string.Empty);
		}
		set
		{
			ViewState["ImageUrlField"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string NavigateUrl
	{
		get
		{
			return ViewState.GetString("NavigateUrl", string.Empty);
		}
		set
		{
			ViewState["NavigateUrl"] = value;
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public string NavigateUrlField
	{
		get
		{
			return ViewState.GetString("NavigateUrlField", string.Empty);
		}
		set
		{
			ViewState["NavigateUrlField"] = value;
		}
	}

	[DefaultValue(true)]
	public bool Selectable
	{
		get
		{
			return ViewState.GetBool("Selectable", def: true);
		}
		set
		{
			ViewState["Selectable"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string SelectableField
	{
		get
		{
			return ViewState.GetString("SelectableField", string.Empty);
		}
		set
		{
			ViewState["SelectableField"] = value;
		}
	}

	[DefaultValue("")]
	public string Target
	{
		get
		{
			return ViewState.GetString("Target", string.Empty);
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string TargetField
	{
		get
		{
			return ViewState.GetString("TargetField", string.Empty);
		}
		set
		{
			ViewState["TargetField"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	[WebSysDescription("The display text of the menu item.")]
	public string Text
	{
		get
		{
			return ViewState.GetString("Text", string.Empty);
		}
		set
		{
			ViewState["Text"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string TextField
	{
		get
		{
			return ViewState.GetString("TextField", string.Empty);
		}
		set
		{
			ViewState["TextField"] = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public string ToolTip
	{
		get
		{
			return ViewState.GetString("ToolTip", string.Empty);
		}
		set
		{
			ViewState["ToolTip"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string ToolTipField
	{
		get
		{
			return ViewState.GetString("ToolTipField", string.Empty);
		}
		set
		{
			ViewState["ToolTipField"] = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public string Value
	{
		get
		{
			return ViewState.GetString("Value", string.Empty);
		}
		set
		{
			ViewState["Value"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string ValueField
	{
		get
		{
			return ViewState.GetString("ValueField", string.Empty);
		}
		set
		{
			ViewState["ValueField"] = value;
		}
	}

	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[UrlProperty]
	[DefaultValue("")]
	public string PopOutImageUrl
	{
		get
		{
			return ViewState.GetString("PopOutImageUrl", string.Empty);
		}
		set
		{
			ViewState["PopOutImageUrl"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string PopOutImageUrlField
	{
		get
		{
			return ViewState.GetString("PopOutImageUrlField", string.Empty);
		}
		set
		{
			ViewState["PopOutImageUrlField"] = value;
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[UrlProperty]
	public string SeparatorImageUrl
	{
		get
		{
			return ViewState.GetString("SeparatorImageUrl", string.Empty);
		}
		set
		{
			ViewState["SeparatorImageUrl"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string SeparatorImageUrlField
	{
		get
		{
			return ViewState.GetString("SeparatorImageUrlField", string.Empty);
		}
		set
		{
			ViewState["SeparatorImageUrlField"] = value;
		}
	}

	bool IStateManager.IsTrackingViewState => ViewState.IsTrackingViewState;

	[MonoTODO("Not implemented")]
	object IDataSourceViewSchemaAccessor.DataSourceViewSchema
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public override string ToString()
	{
		string dataMember = DataMember;
		if (string.IsNullOrEmpty(dataMember))
		{
			return "(Empty)";
		}
		return dataMember;
	}

	void IStateManager.LoadViewState(object savedState)
	{
		ViewState.LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return ViewState.SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		ViewState.TrackViewState();
	}

	object ICloneable.Clone()
	{
		MenuItemBinding menuItemBinding = new MenuItemBinding();
		foreach (DictionaryEntry item in ViewState)
		{
			menuItemBinding.ViewState[(string)item.Key] = item.Value;
		}
		return menuItemBinding;
	}

	internal void SetDirty()
	{
		StateBag viewState = ViewState;
		foreach (string key in viewState.Keys)
		{
			viewState.SetItemDirty(key, dirty: true);
		}
	}
}
