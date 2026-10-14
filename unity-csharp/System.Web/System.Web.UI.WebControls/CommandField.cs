using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CommandField : ButtonFieldBase
{
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[UrlProperty]
	public virtual string CancelImageUrl
	{
		get
		{
			return ViewState.GetString("CancelImageUrl", string.Empty);
		}
		set
		{
			ViewState["CancelImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string CancelText
	{
		get
		{
			return ViewState.GetString("CancelText", "Cancel");
		}
		set
		{
			ViewState["CancelText"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(true)]
	public override bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: true);
		}
		set
		{
			ViewState["CausesValidation"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[WebSysDescription("")]
	[UrlProperty]
	public virtual string DeleteImageUrl
	{
		get
		{
			return ViewState.GetString("DeleteImageUrl", string.Empty);
		}
		set
		{
			ViewState["DeleteImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string DeleteText
	{
		get
		{
			return ViewState.GetString("DeleteText", "Delete");
		}
		set
		{
			ViewState["DeleteText"] = value;
			OnFieldChanged();
		}
	}

	[WebSysDescription("")]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	public virtual string EditImageUrl
	{
		get
		{
			return ViewState.GetString("EditImageUrl", string.Empty);
		}
		set
		{
			ViewState["EditImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string EditText
	{
		get
		{
			return ViewState.GetString("EditText", "Edit");
		}
		set
		{
			ViewState["EditText"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Appearance")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[UrlProperty]
	[WebSysDescription("")]
	public virtual string InsertImageUrl
	{
		get
		{
			return ViewState.GetString("InsertImageUrl", string.Empty);
		}
		set
		{
			ViewState["InsertImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string InsertText
	{
		get
		{
			return ViewState.GetString("InsertText", "Insert");
		}
		set
		{
			ViewState["InsertText"] = value;
			OnFieldChanged();
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string NewImageUrl
	{
		get
		{
			return ViewState.GetString("NewImageUrl", string.Empty);
		}
		set
		{
			ViewState["NewImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string NewText
	{
		get
		{
			return ViewState.GetString("NewText", "New");
		}
		set
		{
			ViewState["NewText"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string SelectImageUrl
	{
		get
		{
			return ViewState.GetString("SelectImageUrl", string.Empty);
		}
		set
		{
			ViewState["SelectImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string SelectText
	{
		get
		{
			return ViewState.GetString("SelectText", "Select");
		}
		set
		{
			ViewState["SelectText"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(true)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ShowCancelButton
	{
		get
		{
			return ViewState.GetBool("ShowCancelButton", def: true);
		}
		set
		{
			ViewState["ShowCancelButton"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ShowDeleteButton
	{
		get
		{
			return ViewState.GetBool("ShowDeleteButton", def: false);
		}
		set
		{
			ViewState["ShowDeleteButton"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(false)]
	public virtual bool ShowEditButton
	{
		get
		{
			return ViewState.GetBool("ShowEditButton", def: false);
		}
		set
		{
			ViewState["ShowEditButton"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ShowSelectButton
	{
		get
		{
			return ViewState.GetBool("ShowSelectButton", def: false);
		}
		set
		{
			ViewState["ShowSelectButton"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ShowInsertButton
	{
		get
		{
			return ViewState.GetBool("ShowInsertButton", def: false);
		}
		set
		{
			ViewState["ShowInsertButton"] = value;
			OnFieldChanged();
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual string UpdateImageUrl
	{
		get
		{
			return ViewState.GetString("UpdateImageUrl", string.Empty);
		}
		set
		{
			ViewState["UpdateImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[Localizable(true)]
	[WebCategory("Appearance")]
	[WebSysDescription("")]
	public virtual string UpdateText
	{
		get
		{
			return ViewState.GetString("UpdateText", "Update");
		}
		set
		{
			ViewState["UpdateText"] = value;
			OnFieldChanged();
		}
	}

	public override void InitializeCell(DataControlFieldCell cell, DataControlCellType cellType, DataControlRowState rowState, int rowIndex)
	{
		string arg = rowIndex.ToString();
		if (cellType == DataControlCellType.DataCell)
		{
			if ((rowState & DataControlRowState.Edit) != 0)
			{
				if (ShowEditButton)
				{
					cell.Controls.Add(CreateButton(UpdateText, UpdateImageUrl, "Update", arg));
					if (ShowCancelButton)
					{
						AddSeparator(cell);
						cell.Controls.Add(CreateButton(CancelText, CancelImageUrl, "Cancel", arg));
					}
				}
				return;
			}
			if ((rowState & DataControlRowState.Insert) != 0)
			{
				if (ShowInsertButton)
				{
					cell.Controls.Add(CreateButton(InsertText, InsertImageUrl, "Insert", arg));
					if (ShowCancelButton)
					{
						AddSeparator(cell);
						cell.Controls.Add(CreateButton(CancelText, CancelImageUrl, "Cancel", arg));
					}
				}
				return;
			}
			if (ShowEditButton)
			{
				AddSeparator(cell);
				cell.Controls.Add(CreateButton(EditText, EditImageUrl, "Edit", arg));
			}
			if (ShowDeleteButton)
			{
				AddSeparator(cell);
				cell.Controls.Add(CreateButton(DeleteText, DeleteImageUrl, "Delete", arg));
			}
			if (ShowInsertButton)
			{
				AddSeparator(cell);
				cell.Controls.Add(CreateButton(NewText, NewImageUrl, "New", arg));
			}
			if (ShowSelectButton)
			{
				AddSeparator(cell);
				cell.Controls.Add(CreateButton(SelectText, SelectImageUrl, "Select", arg));
			}
		}
		else
		{
			base.InitializeCell(cell, cellType, rowState, rowIndex);
		}
	}

	private Control CreateButton(string text, string image, string command, string arg)
	{
		IDataControlButton dataControlButton = DataControlButton.CreateButton(ButtonType, Control, text, image, command, arg, allowCallback: false);
		if (CausesValidation && (command == "Update" || command == "Insert"))
		{
			dataControlButton.Container = null;
			dataControlButton.CausesValidation = true;
			dataControlButton.ValidationGroup = ValidationGroup;
		}
		return (Control)dataControlButton;
	}

	private void AddSeparator(DataControlFieldCell cell)
	{
		if (cell.Controls.Count > 0)
		{
			Literal literal = new Literal();
			literal.Text = "&nbsp;";
			cell.Controls.Add(literal);
		}
	}

	protected override DataControlField CreateField()
	{
		return new CommandField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		CommandField commandField = (CommandField)newField;
		commandField.CancelImageUrl = CancelImageUrl;
		commandField.CancelText = CancelText;
		commandField.DeleteImageUrl = DeleteImageUrl;
		commandField.DeleteText = DeleteText;
		commandField.EditImageUrl = EditImageUrl;
		commandField.EditText = EditText;
		commandField.InsertImageUrl = InsertImageUrl;
		commandField.InsertText = InsertText;
		commandField.NewImageUrl = NewImageUrl;
		commandField.NewText = NewText;
		commandField.SelectImageUrl = SelectImageUrl;
		commandField.SelectText = SelectText;
		commandField.ShowCancelButton = ShowCancelButton;
		commandField.ShowDeleteButton = ShowDeleteButton;
		commandField.ShowEditButton = ShowEditButton;
		commandField.ShowSelectButton = ShowSelectButton;
		commandField.ShowInsertButton = ShowInsertButton;
		commandField.UpdateImageUrl = UpdateImageUrl;
		commandField.UpdateText = UpdateText;
	}

	public override void ValidateSupportsCallback()
	{
		if (ShowSelectButton)
		{
			throw new NotSupportedException("Callbacks are not supported on CommandField when the select button is enabled because other controls on your page that are dependent on the selected value of '" + Control.ID + "' for their rendering will not update in a callback.  Turn callbacks off on '" + Control.ID + "'.");
		}
	}
}
