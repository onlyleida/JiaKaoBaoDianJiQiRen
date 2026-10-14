using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ButtonColumn : DataGridColumn
{
	private string text_field;

	private string format;

	[WebCategory("Misc")]
	[DefaultValue(ButtonColumnType.LinkButton)]
	[WebSysDescription("The type of button contained within the column.")]
	public virtual ButtonColumnType ButtonType
	{
		get
		{
			return (ButtonColumnType)ViewState.GetInt("LinkButton", 0);
		}
		set
		{
			ViewState["LinkButton"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("The command associated with the button.")]
	[WebCategory("Misc")]
	public virtual string CommandName
	{
		get
		{
			return ViewState.GetString("CommandName", string.Empty);
		}
		set
		{
			ViewState["CommandName"] = value;
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
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

	[WebSysDescription("The field bound to the text property of the button.")]
	[DefaultValue("")]
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

	[WebSysDescription("The formatting applied to the value bound to the Text property.")]
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
			format = null;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("The text used for the button.")]
	[WebCategory("Misc")]
	[Localizable(true)]
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

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", string.Empty);
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	public override void Initialize()
	{
		base.Initialize();
	}

	public override void InitializeCell(TableCell cell, int columnIndex, ListItemType itemType)
	{
		base.InitializeCell(cell, columnIndex, itemType);
		if (itemType == ListItemType.Header || itemType == ListItemType.Footer)
		{
			return;
		}
		switch (ButtonType)
		{
		case ButtonColumnType.LinkButton:
		{
			LinkButton linkButton = new ForeColorLinkButton();
			linkButton.Text = Text;
			linkButton.CommandName = CommandName;
			if (!string.IsNullOrEmpty(DataTextField))
			{
				linkButton.DataBinding += DoDataBind;
			}
			cell.Controls.Add(linkButton);
			break;
		}
		case ButtonColumnType.PushButton:
		{
			Button button = new Button();
			button.Text = Text;
			button.CommandName = CommandName;
			if (!string.IsNullOrEmpty(DataTextField))
			{
				button.DataBinding += DoDataBind;
			}
			cell.Controls.Add(button);
			break;
		}
		}
	}

	private string GetValueFromItem(DataGridItem item)
	{
		object dataTextValue = null;
		if (text_field == null)
		{
			text_field = DataTextField;
		}
		if (!string.IsNullOrEmpty(text_field))
		{
			dataTextValue = DataBinder.Eval(item.DataItem, text_field);
		}
		return FormatDataTextValue(dataTextValue);
	}

	private void DoDataBind(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		string valueFromItem = GetValueFromItem((DataGridItem)control.NamingContainer);
		if (!(sender is LinkButton linkButton))
		{
			((Button)sender).Text = valueFromItem;
		}
		else
		{
			linkButton.Text = valueFromItem;
		}
	}

	protected virtual string FormatDataTextValue(object dataTextValue)
	{
		if (dataTextValue == null)
		{
			return string.Empty;
		}
		if (format == null)
		{
			format = DataTextFormatString;
		}
		if (string.IsNullOrEmpty(format))
		{
			return dataTextValue.ToString();
		}
		return string.Format(format, dataTextValue);
	}
}
