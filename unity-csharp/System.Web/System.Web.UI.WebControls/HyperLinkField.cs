using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HyperLinkField : DataControlField
{
	private PropertyDescriptor textProperty;

	private PropertyDescriptor[] urlProperties;

	private static string[] emptyFields;

	[Editor("System.Web.UI.Design.WebControls.DataFieldEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[TypeConverter(typeof(StringArrayConverter))]
	[WebCategory("Data")]
	[DefaultValue(null)]
	public virtual string[] DataNavigateUrlFields
	{
		get
		{
			object obj = ViewState["DataNavigateUrlFields"];
			if (obj != null)
			{
				return (string[])obj;
			}
			if (emptyFields == null)
			{
				emptyFields = new string[0];
			}
			return emptyFields;
		}
		set
		{
			ViewState["DataNavigateUrlFields"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[WebCategory("Data")]
	public virtual string DataNavigateUrlFormatString
	{
		get
		{
			object obj = ViewState["DataNavigateUrlFormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataNavigateUrlFormatString"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Data")]
	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string DataTextField
	{
		get
		{
			object obj = ViewState["DataTextField"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataTextField"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Data")]
	[DefaultValue("")]
	public virtual string DataTextFormatString
	{
		get
		{
			object obj = ViewState["DataTextFormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["DataTextFormatString"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[WebCategory("Behavior")]
	public virtual string NavigateUrl
	{
		get
		{
			object obj = ViewState["NavigateUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["NavigateUrl"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[TypeConverter(typeof(TargetConverter))]
	[DefaultValue("")]
	public virtual string Target
	{
		get
		{
			object obj = ViewState["Target"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["Target"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue("")]
	[Localizable(true)]
	public virtual string Text
	{
		get
		{
			object obj = ViewState["Text"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["Text"] = value;
			OnFieldChanged();
		}
	}

	public override bool Initialize(bool enableSorting, Control control)
	{
		return base.Initialize(enableSorting, control);
	}

	public override void InitializeCell(DataControlFieldCell cell, DataControlCellType cellType, DataControlRowState rowState, int rowIndex)
	{
		base.InitializeCell(cell, cellType, rowState, rowIndex);
		if (cellType == DataControlCellType.DataCell)
		{
			HyperLink hyperLink = new HyperLink();
			bool flag = false;
			if (Target.Length > 0)
			{
				hyperLink.Target = Target;
			}
			if (DataTextField.Length > 0)
			{
				flag = true;
			}
			else
			{
				hyperLink.Text = Text;
			}
			if (DataNavigateUrlFields.Length != 0)
			{
				flag = true;
			}
			else
			{
				hyperLink.NavigateUrl = NavigateUrl;
			}
			if (flag && cellType == DataControlCellType.DataCell && (rowState & DataControlRowState.Insert) == 0)
			{
				cell.DataBinding += OnDataBindField;
			}
			hyperLink.ControlStyle.CopyFrom(ControlStyle);
			cell.Controls.Add(hyperLink);
		}
	}

	protected virtual string FormatDataNavigateUrlValue(object[] dataUrlValues)
	{
		if (dataUrlValues == null || dataUrlValues.Length == 0)
		{
			return string.Empty;
		}
		if (DataNavigateUrlFormatString.Length > 0)
		{
			return string.Format(DataNavigateUrlFormatString, dataUrlValues);
		}
		return dataUrlValues[0].ToString();
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

	private void OnDataBindField(object sender, EventArgs e)
	{
		DataControlFieldCell dataControlFieldCell = (DataControlFieldCell)sender;
		HyperLink hyperLink = (HyperLink)dataControlFieldCell.Controls[0];
		object bindingContainer = dataControlFieldCell.BindingContainer;
		object dataItem = DataBinder.GetDataItem(bindingContainer);
		if (DataTextField.Length > 0)
		{
			if (textProperty == null)
			{
				SetupProperties(bindingContainer);
			}
			hyperLink.Text = FormatDataTextValue(textProperty.GetValue(dataItem));
		}
		string[] dataNavigateUrlFields = DataNavigateUrlFields;
		if (dataNavigateUrlFields.Length != 0)
		{
			if (urlProperties == null)
			{
				SetupProperties(bindingContainer);
			}
			object[] array = new object[dataNavigateUrlFields.Length];
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = urlProperties[i].GetValue(dataItem);
			}
			hyperLink.NavigateUrl = FormatDataNavigateUrlValue(array);
		}
	}

	private void SetupProperties(object controlContainer)
	{
		object dataItem = DataBinder.GetDataItem(controlContainer);
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(dataItem);
		if (DataTextField.Length > 0)
		{
			textProperty = properties.Find(DataTextField, ignoreCase: true);
			if (textProperty == null)
			{
				throw new InvalidOperationException("Property '" + DataTextField + "' not found in object of type " + dataItem.GetType());
			}
		}
		string[] dataNavigateUrlFields = DataNavigateUrlFields;
		if (dataNavigateUrlFields.Length == 0)
		{
			return;
		}
		urlProperties = new PropertyDescriptor[dataNavigateUrlFields.Length];
		for (int i = 0; i < dataNavigateUrlFields.Length; i++)
		{
			PropertyDescriptor propertyDescriptor = properties.Find(dataNavigateUrlFields[i], ignoreCase: true);
			if (propertyDescriptor == null)
			{
				throw new InvalidOperationException("Property '" + dataNavigateUrlFields[i] + "' not found in object of type " + dataItem.GetType());
			}
			urlProperties[i] = propertyDescriptor;
		}
	}

	protected override DataControlField CreateField()
	{
		return new HyperLinkField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		HyperLinkField hyperLinkField = (HyperLinkField)newField;
		hyperLinkField.DataNavigateUrlFields = DataNavigateUrlFields;
		hyperLinkField.DataNavigateUrlFormatString = DataNavigateUrlFormatString;
		hyperLinkField.DataTextField = DataTextField;
		hyperLinkField.DataTextFormatString = DataTextFormatString;
		hyperLinkField.NavigateUrl = NavigateUrl;
		hyperLinkField.Target = Target;
		hyperLinkField.Text = Text;
	}

	public override void ValidateSupportsCallback()
	{
	}
}
