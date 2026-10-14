using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ButtonField : ButtonFieldBase
{
	private PropertyDescriptor boundProperty;

	[WebCategory("Behavior")]
	[DefaultValue("")]
	[WebSysDescription("Raised when a Button Command is executed.")]
	public virtual string CommandName
	{
		get
		{
			return ViewState.GetString("CommandName", string.Empty);
		}
		set
		{
			ViewState["CommandName"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Data")]
	[WebSysDescription("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string DataTextField
	{
		get
		{
			return ViewState.GetString("DataTextField", string.Empty);
		}
		set
		{
			ViewState["DataTextField"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Data")]
	[DefaultValue("")]
	[WebSysDescription("")]
	public virtual string DataTextFormatString
	{
		get
		{
			return ViewState.GetString("DataTextFormatString", string.Empty);
		}
		set
		{
			ViewState["DataTextFormatString"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[WebSysDescription("")]
	public virtual string ImageUrl
	{
		get
		{
			return ViewState.GetString("ImageUrl", string.Empty);
		}
		set
		{
			ViewState["ImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[Localizable(true)]
	[DefaultValue("")]
	public virtual string Text
	{
		get
		{
			return ViewState.GetString("Text", string.Empty);
		}
		set
		{
			ViewState["Text"] = value;
			OnFieldChanged();
		}
	}

	public override bool Initialize(bool sortingEnabled, Control control)
	{
		return base.Initialize(sortingEnabled, control);
	}

	protected virtual string FormatDataTextValue(object dataTextValue)
	{
		if (DataTextFormatString.Length > 0)
		{
			return string.Format(DataTextFormatString, dataTextValue);
		}
		if (dataTextValue == null)
		{
			return string.Empty;
		}
		return dataTextValue.ToString();
	}

	public override void InitializeCell(DataControlFieldCell cell, DataControlCellType cellType, DataControlRowState rowState, int rowIndex)
	{
		string commandArg = rowIndex.ToString();
		if (cellType == DataControlCellType.DataCell)
		{
			IDataControlButton dataControlButton = DataControlButton.CreateButton(ButtonType, Control, Text, ImageUrl, CommandName, commandArg, allowCallback: false);
			if (CausesValidation)
			{
				dataControlButton.Container = null;
				dataControlButton.CausesValidation = true;
				dataControlButton.ValidationGroup = ValidationGroup;
			}
			if (!string.IsNullOrEmpty(DataTextField) && (rowState & DataControlRowState.Insert) == 0)
			{
				cell.DataBinding += OnDataBindField;
			}
			cell.Controls.Add((Control)dataControlButton);
		}
		else
		{
			base.InitializeCell(cell, cellType, rowState, rowIndex);
		}
	}

	private void OnDataBindField(object sender, EventArgs e)
	{
		DataControlFieldCell dataControlFieldCell = (DataControlFieldCell)sender;
		((IDataControlButton)dataControlFieldCell.Controls[0]).Text = FormatDataTextValue(GetBoundValue(dataControlFieldCell.BindingContainer));
	}

	private object GetBoundValue(Control controlContainer)
	{
		IDataItemContainer dataItemContainer = controlContainer as IDataItemContainer;
		if (boundProperty == null)
		{
			boundProperty = TypeDescriptor.GetProperties(dataItemContainer.DataItem)[DataTextField];
			if (boundProperty == null)
			{
				throw new InvalidOperationException("Property '" + DataTextField + "' not found in object of type " + dataItemContainer.DataItem.GetType());
			}
		}
		return boundProperty.GetValue(dataItemContainer.DataItem);
	}

	protected override DataControlField CreateField()
	{
		return new ButtonField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		ButtonField buttonField = (ButtonField)newField;
		buttonField.CommandName = CommandName;
		buttonField.DataTextField = DataTextField;
		buttonField.DataTextFormatString = DataTextFormatString;
		buttonField.ImageUrl = ImageUrl;
		buttonField.Text = Text;
	}

	public override void ValidateSupportsCallback()
	{
	}
}
