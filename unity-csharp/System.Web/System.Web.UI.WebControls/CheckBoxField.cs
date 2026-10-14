using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CheckBoxField : BoundField
{
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool ApplyFormatInEditMode
	{
		get
		{
			throw GetNotSupportedPropException("ApplyFormatInEditMode");
		}
		set
		{
			throw GetNotSupportedPropException("ApplyFormatInEditMode");
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool ConvertEmptyStringToNull
	{
		get
		{
			throw GetNotSupportedPropException("ConvertEmptyStringToNull");
		}
		set
		{
			throw GetNotSupportedPropException("ConvertEmptyStringToNull");
		}
	}

	[TypeConverter("System.Web.UI.Design.DataSourceBooleanViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public override string DataField
	{
		get
		{
			return base.DataField;
		}
		set
		{
			base.DataField = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string DataFormatString
	{
		get
		{
			throw GetNotSupportedPropException("DataFormatString");
		}
		set
		{
			throw GetNotSupportedPropException("DataFormatString");
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool HtmlEncode
	{
		get
		{
			throw GetNotSupportedPropException("HtmlEncode");
		}
		set
		{
			throw GetNotSupportedPropException("HtmlEncode");
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool HtmlEncodeFormatString
	{
		get
		{
			return base.HtmlEncodeFormatString;
		}
		set
		{
			base.HtmlEncodeFormatString = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string NullDisplayText
	{
		get
		{
			throw GetNotSupportedPropException("NullDisplayText");
		}
		set
		{
			throw GetNotSupportedPropException("NullDisplayText");
		}
	}

	protected override bool SupportsHtmlEncode => false;

	[Localizable(true)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
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

	protected override void InitializeDataCell(DataControlFieldCell cell, DataControlRowState rowState)
	{
		bool flag = IsEditable(rowState);
		CheckBox checkBox = new CheckBox();
		checkBox.Enabled = flag;
		if (flag)
		{
			checkBox.ToolTip = HeaderText;
		}
		checkBox.Text = Text;
		cell.Controls.Add(checkBox);
	}

	public override void ExtractValuesFromCell(IOrderedDictionary dictionary, DataControlFieldCell cell, DataControlRowState rowState, bool includeReadOnly)
	{
		if (IsEditable(rowState) | includeReadOnly)
		{
			CheckBox checkBox = (CheckBox)cell.Controls[0];
			dictionary[DataField] = checkBox.Checked;
		}
	}

	protected override void OnDataBindField(object sender, EventArgs e)
	{
		try
		{
			Control control = (Control)sender;
			object value = GetValue(control.NamingContainer);
			CheckBox checkBox = sender as CheckBox;
			if (checkBox == null && sender is DataControlFieldCell { Controls: var controls })
			{
				if ((controls?.Count ?? 0) == 1)
				{
					checkBox = controls[0] as CheckBox;
				}
				if (checkBox == null)
				{
					return;
				}
			}
			if (checkBox == null)
			{
				throw new HttpException("CheckBox field '" + DataField + "' contains a control that isn't a CheckBox.  Override OnDataBindField to inherit from CheckBoxField and add different controls.");
			}
			if (value != null && value != DBNull.Value)
			{
				checkBox.Checked = (bool)value;
			}
			else if (string.IsNullOrEmpty(DataField))
			{
				checkBox.Visible = false;
				return;
			}
			if (!checkBox.Visible)
			{
				checkBox.Visible = true;
			}
		}
		catch (HttpException)
		{
			throw;
		}
		catch (Exception ex2)
		{
			throw new HttpException(ex2.Message, ex2);
		}
	}

	protected override object GetDesignTimeValue()
	{
		return true;
	}

	protected override DataControlField CreateField()
	{
		return new CheckBoxField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		CheckBoxField checkBoxField = (CheckBoxField)newField;
		checkBoxField.DataField = DataField;
		checkBoxField.ReadOnly = ReadOnly;
		checkBoxField.Text = Text;
	}

	public override void ValidateSupportsCallback()
	{
	}
}
