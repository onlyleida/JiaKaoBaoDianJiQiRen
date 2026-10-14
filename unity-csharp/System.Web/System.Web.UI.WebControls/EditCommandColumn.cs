using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class EditCommandColumn : DataGridColumn
{
	[DefaultValue(ButtonColumnType.LinkButton)]
	public virtual ButtonColumnType ButtonType
	{
		get
		{
			object obj = ViewState["ButtonType"];
			if (obj != null)
			{
				return (ButtonColumnType)obj;
			}
			return ButtonColumnType.LinkButton;
		}
		set
		{
			ViewState["ButtonType"] = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string CancelText
	{
		get
		{
			return ViewState.GetString("CancelText", string.Empty);
		}
		set
		{
			ViewState["CancelText"] = value;
		}
	}

	[DefaultValue(true)]
	public virtual bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: true);
		}
		set
		{
			ViewState["CausesValidation"] = value;
		}
	}

	[DefaultValue("")]
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

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string EditText
	{
		get
		{
			return ViewState.GetString("EditText", string.Empty);
		}
		set
		{
			ViewState["EditText"] = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string UpdateText
	{
		get
		{
			return ViewState.GetString("UpdateText", string.Empty);
		}
		set
		{
			ViewState["UpdateText"] = value;
		}
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
		case ListItemType.SelectedItem:
			cell.Controls.Add(CreateButton(ButtonType, EditText, "Edit", valid: false));
			break;
		case ListItemType.EditItem:
			cell.Controls.Add(CreateButton(ButtonType, UpdateText, "Update", CausesValidation));
			cell.Controls.Add(new LiteralControl("&nbsp;"));
			cell.Controls.Add(CreateButton(ButtonType, CancelText, "Cancel", valid: false));
			break;
		}
	}

	private Control CreateButton(ButtonColumnType type, string text, string command, bool valid)
	{
		if (type == ButtonColumnType.LinkButton)
		{
			LinkButton linkButton = new ForeColorLinkButton();
			linkButton.Text = text;
			linkButton.CommandName = command;
			linkButton.CausesValidation = valid;
			if (valid)
			{
				linkButton.ValidationGroup = ValidationGroup;
			}
			return linkButton;
		}
		Button button = new Button();
		button.Text = text;
		button.CommandName = command;
		button.CausesValidation = valid;
		if (valid)
		{
			button.ValidationGroup = ValidationGroup;
		}
		return button;
	}
}
