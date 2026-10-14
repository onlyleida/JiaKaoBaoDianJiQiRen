using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ImageField : DataControlField
{
	public static readonly string ThisExpression = "!";

	private PropertyDescriptor imageProperty;

	private PropertyDescriptor textProperty;

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[Localizable(true)]
	[DefaultValue("")]
	public virtual string AlternateText
	{
		get
		{
			object obj = ViewState["AlternateText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["AlternateText"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(true)]
	public virtual bool ConvertEmptyStringToNull
	{
		get
		{
			object obj = ViewState["ConvertEmptyStringToNull"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["ConvertEmptyStringToNull"] = value;
			OnFieldChanged();
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[WebCategory("Data")]
	public virtual string DataAlternateTextField
	{
		get
		{
			object obj = ViewState["DataAlternateTextField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataAlternateTextField"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Data")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string DataAlternateTextFormatString
	{
		get
		{
			object obj = ViewState["DataAlternateTextFormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataAlternateTextFormatString"] = value;
			OnFieldChanged();
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual string DataImageUrlField
	{
		get
		{
			object obj = ViewState["DataImageUrlField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataImageUrlField"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual string DataImageUrlFormatString
	{
		get
		{
			object obj = ViewState["DataImageUrlFormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataImageUrlFormatString"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[Localizable(true)]
	public virtual string NullDisplayText
	{
		get
		{
			object obj = ViewState["NullDisplayText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["NullDisplayText"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[WebCategory("Behavior")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[WebSysDescription("")]
	public virtual string NullImageUrl
	{
		get
		{
			object obj = ViewState["NullImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["NullImageUrl"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ReadOnly
	{
		get
		{
			object obj = ViewState["ReadOnly"];
			if (obj == null)
			{
				return false;
			}
			return (bool)obj;
		}
		set
		{
			ViewState["ReadOnly"] = value;
			OnFieldChanged();
		}
	}

	public override bool Initialize(bool enableSorting, Control control)
	{
		return base.Initialize(enableSorting, control);
	}

	public override void ExtractValuesFromCell(IOrderedDictionary dictionary, DataControlFieldCell cell, DataControlRowState rowState, bool includeReadOnly)
	{
		if ((ReadOnly && !includeReadOnly) || cell.Controls.Count == 0)
		{
			return;
		}
		bool flag = (rowState & (DataControlRowState.Edit | DataControlRowState.Insert)) != 0;
		if (includeReadOnly | flag)
		{
			Control control = cell.Controls[0];
			if (control is Image)
			{
				dictionary[DataImageUrlField] = ((Image)control).ImageUrl;
			}
			else if (control is TextBox)
			{
				dictionary[DataImageUrlField] = ((TextBox)control).Text;
			}
		}
	}

	public override void InitializeCell(DataControlFieldCell cell, DataControlCellType cellType, DataControlRowState rowState, int rowIndex)
	{
		base.InitializeCell(cell, cellType, rowState, rowIndex);
		if (cellType == DataControlCellType.DataCell)
		{
			InitializeDataCell(cell, rowState);
			if ((rowState & DataControlRowState.Insert) == 0)
			{
				cell.DataBinding += OnDataBindField;
			}
		}
	}

	protected virtual void InitializeDataCell(DataControlFieldCell cell, DataControlRowState rowState)
	{
		if ((rowState & (DataControlRowState.Edit | DataControlRowState.Insert)) != 0 && !ReadOnly)
		{
			TextBox child = new TextBox();
			cell.Controls.Add(child);
		}
		else if (DataImageUrlField.Length > 0)
		{
			Image image = new Image();
			image.ControlStyle.CopyFrom(ControlStyle);
			cell.Controls.Add(image);
		}
	}

	protected virtual string FormatImageUrlValue(object dataValue)
	{
		if (dataValue == null)
		{
			return null;
		}
		if (DataImageUrlFormatString.Length > 0)
		{
			return string.Format(DataImageUrlFormatString, dataValue);
		}
		return dataValue.ToString();
	}

	protected virtual string GetFormattedAlternateText(Control controlContainer)
	{
		if (DataAlternateTextField.Length > 0)
		{
			if (textProperty == null)
			{
				textProperty = GetProperty(controlContainer, DataAlternateTextField);
			}
			object value = GetValue(controlContainer, DataAlternateTextField, ref textProperty);
			if (value == null || (value.ToString().Length == 0 && ConvertEmptyStringToNull))
			{
				return NullDisplayText;
			}
			if (DataAlternateTextFormatString.Length > 0)
			{
				return string.Format(DataAlternateTextFormatString, value);
			}
			return value.ToString();
		}
		return AlternateText;
	}

	protected virtual object GetValue(Control controlContainer, string fieldName, ref PropertyDescriptor cachedDescriptor)
	{
		if (DesignMode)
		{
			return GetDesignTimeValue();
		}
		object dataItem = DataBinder.GetDataItem(controlContainer);
		if (dataItem == null)
		{
			throw new HttpException("A data item was not found in the container. The container must either implement IDataItemContainer, or have a property named DataItem.");
		}
		if (fieldName == ThisExpression)
		{
			return dataItem;
		}
		if (cachedDescriptor != null)
		{
			return cachedDescriptor.GetValue(dataItem);
		}
		return GetProperty(controlContainer, fieldName).GetValue(dataItem);
	}

	private PropertyDescriptor GetProperty(Control controlContainer, string fieldName)
	{
		if (fieldName == ThisExpression)
		{
			return null;
		}
		IDataItemContainer dataItemContainer = (IDataItemContainer)controlContainer;
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(dataItemContainer.DataItem)?[fieldName];
		if (propertyDescriptor == null)
		{
			throw new InvalidOperationException("Property '" + fieldName + "' not found in object of type " + dataItemContainer.DataItem.GetType());
		}
		return propertyDescriptor;
	}

	protected virtual string GetDesignTimeValue()
	{
		return "Databound";
	}

	protected virtual void OnDataBindField(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		ControlCollection controlCollection = control?.Controls;
		Control namingContainer = control.NamingContainer;
		Control control2;
		if (sender is DataControlFieldCell)
		{
			if (controlCollection.Count == 0)
			{
				return;
			}
			control2 = controlCollection[0];
		}
		else
		{
			if (!(sender is Image) && !(sender is TextBox))
			{
				return;
			}
			control2 = control;
		}
		if (imageProperty == null)
		{
			imageProperty = GetProperty(namingContainer, DataImageUrlField);
		}
		if (control2 is TextBox)
		{
			object value = GetValue(namingContainer, DataImageUrlField, ref imageProperty);
			((TextBox)control2).Text = ((value != null) ? value.ToString() : string.Empty);
		}
		else
		{
			if (!(control2 is Image))
			{
				return;
			}
			Image image = (Image)control2;
			string text = FormatImageUrlValue(GetValue(namingContainer, DataImageUrlField, ref imageProperty));
			if (text == null || (ConvertEmptyStringToNull && text.Length == 0))
			{
				if (NullImageUrl == null || NullImageUrl.Length == 0)
				{
					control2.Visible = false;
					controlCollection.Add(new Label
					{
						Text = NullDisplayText
					});
				}
				else
				{
					text = NullImageUrl;
				}
			}
			image.ImageUrl = text;
			image.AlternateText = GetFormattedAlternateText(namingContainer);
		}
	}

	public override void ValidateSupportsCallback()
	{
	}

	protected override DataControlField CreateField()
	{
		return new ImageField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		ImageField imageField = (ImageField)newField;
		imageField.AlternateText = AlternateText;
		imageField.ConvertEmptyStringToNull = ConvertEmptyStringToNull;
		imageField.DataAlternateTextField = DataAlternateTextField;
		imageField.DataAlternateTextFormatString = DataAlternateTextFormatString;
		imageField.DataImageUrlField = DataImageUrlField;
		imageField.DataImageUrlFormatString = DataImageUrlFormatString;
		imageField.NullDisplayText = NullDisplayText;
		imageField.NullImageUrl = NullImageUrl;
		imageField.ReadOnly = ReadOnly;
	}
}
