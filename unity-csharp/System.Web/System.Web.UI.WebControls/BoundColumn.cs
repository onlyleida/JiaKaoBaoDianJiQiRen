using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class BoundColumn : DataGridColumn
{
	private string data_format_string;

	public static readonly string thisExpr = "!";

	[WebCategory("Misc")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string DataField
	{
		get
		{
			return ViewState.GetString("DataField", string.Empty);
		}
		set
		{
			ViewState["DataField"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public virtual string DataFormatString
	{
		get
		{
			return ViewState.GetString("DataFormatString", string.Empty);
		}
		set
		{
			ViewState["DataFormatString"] = value;
		}
	}

	[DefaultValue(false)]
	[WebCategory("Misc")]
	[WebSysDescription("")]
	public virtual bool ReadOnly
	{
		get
		{
			return ViewState.GetBool("ReadOnly", def: false);
		}
		set
		{
			ViewState["ReadOnly"] = value;
		}
	}

	public override void Initialize()
	{
		data_format_string = DataFormatString;
	}

	public override void InitializeCell(TableCell cell, int columnIndex, ListItemType itemType)
	{
		base.InitializeCell(cell, columnIndex, itemType);
		string dataField = DataField;
		switch (itemType)
		{
		case ListItemType.Item:
		case ListItemType.AlternatingItem:
		case ListItemType.SelectedItem:
			if (dataField != null && dataField.Length != 0)
			{
				cell.DataBinding += ItemDataBinding;
			}
			break;
		case ListItemType.EditItem:
		{
			if (ReadOnly && dataField != null && dataField.Length != 0)
			{
				cell.DataBinding += ItemDataBinding;
				break;
			}
			TextBox textBox = new TextBox();
			if (dataField != null && dataField.Length != 0)
			{
				textBox.DataBinding += ItemDataBinding;
			}
			cell.Controls.Add(textBox);
			break;
		}
		}
	}

	protected virtual string FormatDataValue(object dataValue)
	{
		if (dataValue == null)
		{
			return "";
		}
		if (data_format_string == string.Empty)
		{
			return dataValue.ToString();
		}
		return string.Format(data_format_string, dataValue);
	}

	private string GetValueFromItem(DataGridItem item)
	{
		object dataValue = ((!(DataField != thisExpr)) ? item.DataItem : DataBinder.Eval(item.DataItem, DataField));
		string text = FormatDataValue(dataValue);
		if (!(text != ""))
		{
			return "&nbsp;";
		}
		return text;
	}

	private void ItemDataBinding(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		string valueFromItem = GetValueFromItem((DataGridItem)control.NamingContainer);
		if (!(sender is TableCell tableCell))
		{
			((TextBox)sender).Text = valueFromItem;
		}
		else
		{
			tableCell.Text = valueFromItem;
		}
	}
}
