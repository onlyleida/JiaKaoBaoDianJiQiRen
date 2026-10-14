using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HyperLinkColumn : DataGridColumn
{
	[DefaultValue("")]
	[WebCategory("Misc")]
	[WebSysDescription("")]
	public virtual string DataNavigateUrlField
	{
		get
		{
			return ViewState.GetString("DataNavigateUrlField", string.Empty);
		}
		set
		{
			ViewState["DataNavigateUrlField"] = value;
		}
	}

	[DefaultValue("")]
	[Description("The formatting applied to the value bound to the NavigateUrl property.")]
	[WebCategory("Misc")]
	public virtual string DataNavigateUrlFormatString
	{
		get
		{
			return ViewState.GetString("DataNavigateUrlFormatString", string.Empty);
		}
		set
		{
			ViewState["DataNavigateUrlFormatString"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual string DataTextField
	{
		get
		{
			return ViewState.GetString("DataTextField", string.Empty);
		}
		set
		{
			ViewState["DataTextField"] = value;
		}
	}

	[Description("The formatting applied to the value bound to the Text property.")]
	[DefaultValue("")]
	[WebCategory("Misc")]
	public virtual string DataTextFormatString
	{
		get
		{
			return ViewState.GetString("DataTextFormatString", string.Empty);
		}
		set
		{
			ViewState["DataTextFormatString"] = value;
		}
	}

	[UrlProperty]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual string NavigateUrl
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

	[WebCategory("Misc")]
	[TypeConverter("System.Web.UI.WebControls.TargetConverter")]
	[DefaultValue("")]
	[WebSysDescription("")]
	public virtual string Target
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

	[WebCategory("Misc")]
	[DefaultValue("")]
	[Localizable(true)]
	[WebSysDescription("")]
	public virtual string Text
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

	protected virtual string FormatDataNavigateUrlValue(object dataUrlValue)
	{
		string text = DataNavigateUrlFormatString;
		if (text == "")
		{
			text = null;
		}
		return DataBinder.FormatResult(dataUrlValue, text);
	}

	protected virtual string FormatDataTextValue(object dataTextValue)
	{
		string text = DataTextFormatString;
		if (text == "")
		{
			text = null;
		}
		return DataBinder.FormatResult(dataTextValue, text);
	}

	public override void Initialize()
	{
		base.Initialize();
	}

	private void ItemDataBinding(object sender, EventArgs args)
	{
		TableCell tableCell = (TableCell)sender;
		HyperLink hyperLink = (HyperLink)tableCell.Controls[0];
		DataGridItem dataGridItem = (DataGridItem)tableCell.NamingContainer;
		if (DataNavigateUrlField != "")
		{
			hyperLink.NavigateUrl = FormatDataNavigateUrlValue(DataBinder.Eval(dataGridItem.DataItem, DataNavigateUrlField));
		}
		else
		{
			hyperLink.NavigateUrl = NavigateUrl;
		}
		if (DataTextField != "")
		{
			hyperLink.Text = FormatDataTextValue(DataBinder.Eval(dataGridItem.DataItem, DataTextField));
		}
		else
		{
			hyperLink.Text = Text;
		}
		hyperLink.Target = Target;
	}

	public override void InitializeCell(TableCell cell, int columnIndex, ListItemType itemType)
	{
		base.InitializeCell(cell, columnIndex, itemType);
		switch (itemType)
		{
		case ListItemType.Header:
		case ListItemType.Footer:
		case ListItemType.Separator:
		case ListItemType.Pager:
			break;
		case ListItemType.Item:
		case ListItemType.AlternatingItem:
		case ListItemType.EditItem:
			cell.DataBinding += ItemDataBinding;
			cell.Controls.Add(new HyperLink());
			break;
		case ListItemType.SelectedItem:
			break;
		}
	}
}
