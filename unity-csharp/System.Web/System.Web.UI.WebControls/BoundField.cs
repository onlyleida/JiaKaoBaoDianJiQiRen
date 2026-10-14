using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class BoundField : DataControlField
{
	public static readonly string ThisExpression = "!";

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ApplyFormatInEditMode
	{
		get
		{
			return ViewState.GetBool("ApplyFormatInEditMode", def: false);
		}
		set
		{
			ViewState["ApplyFormatInEditMode"] = value;
		}
	}

	[DefaultValue(true)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool ConvertEmptyStringToNull
	{
		get
		{
			return ViewState.GetBool("ConvertEmptyStringToNull", def: true);
		}
		set
		{
			ViewState["ConvertEmptyStringToNull"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[TypeConverter("System.Web.UI.Design.DataSourceViewSchemaConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual string DataField
	{
		get
		{
			return ViewState.GetString("DataField", string.Empty);
		}
		set
		{
			ViewState["DataField"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual string DataFormatString
	{
		get
		{
			return ViewState.GetString("DataFormatString", string.Empty);
		}
		set
		{
			ViewState["DataFormatString"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	public override string HeaderText
	{
		get
		{
			return ViewState.GetString("HeaderText", string.Empty);
		}
		set
		{
			ViewState["HeaderText"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[DefaultValue("")]
	public virtual string NullDisplayText
	{
		get
		{
			return ViewState.GetString("NullDisplayText", string.Empty);
		}
		set
		{
			ViewState["NullDisplayText"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(false)]
	public virtual bool ReadOnly
	{
		get
		{
			return ViewState.GetBool("ReadOnly", def: false);
		}
		set
		{
			ViewState["ReadOnly"] = value;
			OnFieldChanged();
		}
	}

	[WebCategory("HtmlEncode")]
	[WebSysDescription("")]
	[DefaultValue(true)]
	public virtual bool HtmlEncode
	{
		get
		{
			return ViewState.GetBool("HtmlEncode", def: true);
		}
		set
		{
			ViewState["HtmlEncode"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(true)]
	public virtual bool HtmlEncodeFormatString
	{
		get
		{
			return ViewState.GetBool("HtmlEncodeFormatString", def: true);
		}
		set
		{
			ViewState["HtmlEncodeFormatString"] = value;
			OnFieldChanged();
		}
	}

	protected virtual bool SupportsHtmlEncode => true;

	public new ValidateRequestMode ValidateRequestMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public override void ExtractValuesFromCell(IOrderedDictionary dictionary, DataControlFieldCell cell, DataControlRowState rowState, bool includeReadOnly)
	{
		if (IsEditable(rowState))
		{
			if (cell.Controls.Count > 0)
			{
				TextBox textBox = (TextBox)cell.Controls[0];
				dictionary[DataField] = textBox.Text;
			}
		}
		else if (includeReadOnly)
		{
			dictionary[DataField] = cell.Text;
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
			InitializeDataCell(cell, rowState);
			if ((rowState & DataControlRowState.Insert) == 0)
			{
				cell.DataBinding += OnDataBindField;
			}
		}
	}

	protected virtual void InitializeDataCell(DataControlFieldCell cell, DataControlRowState rowState)
	{
		if (IsEditable(rowState))
		{
			TextBox textBox = new TextBox();
			cell.Controls.Add(textBox);
			textBox.ToolTip = HeaderText;
		}
	}

	internal bool IsEditable(DataControlRowState rowState)
	{
		if ((rowState & DataControlRowState.Edit) == 0 || ReadOnly)
		{
			if ((rowState & DataControlRowState.Insert) != 0)
			{
				return InsertVisible;
			}
			return false;
		}
		return true;
	}

	protected virtual string FormatDataValue(object dataValue, bool encode)
	{
		bool htmlEncodeFormatString = HtmlEncodeFormatString;
		string text = ((dataValue != null) ? dataValue.ToString() : string.Empty);
		string text2;
		if (dataValue == null || (text.Length == 0 && ConvertEmptyStringToNull))
		{
			if (NullDisplayText.Length == 0)
			{
				encode = false;
				text2 = "&nbsp;";
			}
			else
			{
				text2 = NullDisplayText;
			}
		}
		else
		{
			string dataFormatString = DataFormatString;
			if (string.IsNullOrEmpty(dataFormatString))
			{
				text2 = text;
			}
			else
			{
				text2 = ((!(!encode | htmlEncodeFormatString)) ? string.Format(dataFormatString, encode ? HttpUtility.HtmlEncode(text) : text) : string.Format(dataFormatString, dataValue));
			}
		}
		if (encode & htmlEncodeFormatString)
		{
			return HttpUtility.HtmlEncode(text2);
		}
		return text2;
	}

	protected virtual object GetValue(Control controlContainer)
	{
		if (DesignMode)
		{
			return GetDesignTimeValue();
		}
		return GetBoundValue(controlContainer);
	}

	protected virtual object GetDesignTimeValue()
	{
		return "Databound";
	}

	private object GetBoundValue(Control controlContainer)
	{
		object dataItem = DataBinder.GetDataItem(controlContainer);
		if (dataItem == null)
		{
			throw new HttpException("A data item was not found in the container. The container must either implement IDataItemContainer, or have a property named DataItem.");
		}
		if (DataField == ThisExpression)
		{
			return dataItem;
		}
		if (DataField == string.Empty)
		{
			return null;
		}
		return DataBinder.GetPropertyValue(dataItem, DataField);
	}

	protected override void LoadViewState(object state)
	{
		base.LoadViewState(state);
	}

	protected virtual void OnDataBindField(object sender, EventArgs e)
	{
		Control bindingContainer = ((Control)sender).BindingContainer;
		if (!(bindingContainer is INamingContainer))
		{
			throw new HttpException("A DataControlField must be within an INamingContainer.");
		}
		object value = GetValue(bindingContainer);
		TextBox textBox = sender as TextBox;
		if (textBox == null && sender is DataControlFieldCell { Controls: var controls } dataControlFieldCell)
		{
			if ((controls?.Count ?? 0) == 1)
			{
				textBox = controls[0] as TextBox;
			}
			if (textBox == null)
			{
				dataControlFieldCell.Text = FormatDataValue(value, SupportsHtmlEncode && HtmlEncode);
				return;
			}
		}
		if (textBox == null)
		{
			throw new HttpException("Bound field " + DataField + " contains a control that isn't a TextBox.  Override OnDataBindField to inherit from BoundField and add different controls.");
		}
		if (ApplyFormatInEditMode)
		{
			textBox.Text = FormatDataValue(value, SupportsHtmlEncode && HtmlEncode);
		}
		else
		{
			textBox.Text = ((value != null) ? value.ToString() : NullDisplayText);
		}
	}

	protected override DataControlField CreateField()
	{
		return new BoundField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		BoundField boundField = (BoundField)newField;
		boundField.ConvertEmptyStringToNull = ConvertEmptyStringToNull;
		boundField.DataField = DataField;
		boundField.DataFormatString = DataFormatString;
		boundField.NullDisplayText = NullDisplayText;
		boundField.ReadOnly = ReadOnly;
		boundField.HtmlEncode = HtmlEncode;
	}

	public override void ValidateSupportsCallback()
	{
	}
}
