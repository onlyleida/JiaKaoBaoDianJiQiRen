using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace System.Web.UI.WebControls;

[DefaultProperty("TextField")]
public sealed class TreeNodeBinding : IStateManager, ICloneable, IDataSourceViewSchemaAccessor
{
	private StateBag ViewState = new StateBag();

	[DefaultValue("")]
	public string DataMember
	{
		get
		{
			object obj = ViewState["DataMember"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
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
			object obj = ViewState["Depth"];
			if (obj != null)
			{
				return (int)obj;
			}
			return -1;
		}
		set
		{
			ViewState["Depth"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public string FormatString
	{
		get
		{
			object obj = ViewState["FormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["FormatString"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public string ImageToolTip
	{
		get
		{
			object obj = ViewState["ImageToolTip"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["ImageToolTip"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string ImageToolTipField
	{
		get
		{
			object obj = ViewState["ImageToolTipField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["ImageToolTipField"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string ImageUrl
	{
		get
		{
			object obj = ViewState["ImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["ImageUrl"] = value;
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public string ImageUrlField
	{
		get
		{
			object obj = ViewState["ImageUrlField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["ImageUrlField"] = value;
		}
	}

	[UrlProperty]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	public string NavigateUrl
	{
		get
		{
			object obj = ViewState["NavigateUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["NavigateUrl"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string NavigateUrlField
	{
		get
		{
			object obj = ViewState["NavigateUrlField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["NavigateUrlField"] = value;
		}
	}

	[DefaultValue(false)]
	public bool PopulateOnDemand
	{
		get
		{
			object obj = ViewState["PopulateOnDemand"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["PopulateOnDemand"] = value;
		}
	}

	[DefaultValue(TreeNodeSelectAction.Select)]
	public TreeNodeSelectAction SelectAction
	{
		get
		{
			object obj = ViewState["SelectAction"];
			if (obj != null)
			{
				return (TreeNodeSelectAction)obj;
			}
			return TreeNodeSelectAction.Select;
		}
		set
		{
			ViewState["SelectAction"] = value;
		}
	}

	[DefaultValue(false)]
	public bool? ShowCheckBox
	{
		get
		{
			return (bool?)ViewState["ShowCheckBox"];
		}
		set
		{
			ViewState["ShowCheckBox"] = value;
		}
	}

	[DefaultValue("")]
	public string Target
	{
		get
		{
			object obj = ViewState["Target"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public string TargetField
	{
		get
		{
			object obj = ViewState["TargetField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["TargetField"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("The display text of the tree node.")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			object obj = ViewState["Text"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
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
			object obj = ViewState["TextField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
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
			object obj = ViewState["ToolTip"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
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
			object obj = ViewState["ToolTipField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
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
			object obj = ViewState["Value"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["Value"] = value;
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public string ValueField
	{
		get
		{
			object obj = ViewState["ValueField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["ValueField"] = value;
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

	internal bool HasPropertyValue(string propName)
	{
		return ViewState[propName] != null;
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
		TreeNodeBinding treeNodeBinding = new TreeNodeBinding();
		foreach (DictionaryEntry item in ViewState)
		{
			treeNodeBinding.ViewState[(string)item.Key] = item.Value;
		}
		return treeNodeBinding;
	}

	internal void SetDirty()
	{
		foreach (string key in ViewState.Keys)
		{
			ViewState.SetItemDirty(key, dirty: true);
		}
	}

	public override string ToString()
	{
		if (DataMember.Length <= 0)
		{
			return "(Empty)";
		}
		return DataMember;
	}
}
