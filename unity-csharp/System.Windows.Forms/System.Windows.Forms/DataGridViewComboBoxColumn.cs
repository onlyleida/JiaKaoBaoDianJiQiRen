using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace System.Windows.Forms;

[Designer("System.Windows.Forms.Design.DataGridViewComboBoxColumnDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ToolboxBitmap("")]
public class DataGridViewComboBoxColumn : DataGridViewColumn
{
	private bool autoComplete;

	private DataGridViewComboBoxDisplayStyle displayStyle;

	private bool displayStyleForCurrentCellOnly;

	private FlatStyle flatStyle;

	[Browsable(true)]
	[DefaultValue(true)]
	public bool AutoComplete
	{
		get
		{
			return autoComplete;
		}
		set
		{
			autoComplete = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override DataGridViewCell CellTemplate
	{
		get
		{
			return base.CellTemplate;
		}
		set
		{
			if (!(value is DataGridViewComboBoxCell dataGridViewComboBoxCell))
			{
				throw new InvalidCastException("Invalid cell tempalte type.");
			}
			dataGridViewComboBoxCell.OwningColumnTemplate = this;
			base.CellTemplate = dataGridViewComboBoxCell;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(null)]
	[AttributeProvider(typeof(IListSource))]
	public object DataSource
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).DataSource;
		}
		set
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			(base.CellTemplate as DataGridViewComboBoxCell).DataSource = value;
		}
	}

	[DefaultValue("")]
	[Editor("System.Windows.Forms.Design.DataMemberFieldEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[TypeConverter("System.Windows.Forms.Design.DataMemberFieldConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string DisplayMember
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).DisplayMember;
		}
		set
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			(base.CellTemplate as DataGridViewComboBoxCell).DisplayMember = value;
		}
	}

	[DefaultValue(DataGridViewComboBoxDisplayStyle.DropDownButton)]
	public DataGridViewComboBoxDisplayStyle DisplayStyle
	{
		get
		{
			return displayStyle;
		}
		set
		{
			displayStyle = value;
		}
	}

	[DefaultValue(false)]
	public bool DisplayStyleForCurrentCellOnly
	{
		get
		{
			return displayStyleForCurrentCellOnly;
		}
		set
		{
			displayStyleForCurrentCellOnly = value;
		}
	}

	[DefaultValue(1)]
	public int DropDownWidth
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).DropDownWidth;
		}
		set
		{
			if (value < 1)
			{
				throw new ArgumentException("Value is less than 1.");
			}
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			(base.CellTemplate as DataGridViewComboBoxCell).DropDownWidth = value;
		}
	}

	[DefaultValue(FlatStyle.Standard)]
	public FlatStyle FlatStyle
	{
		get
		{
			return flatStyle;
		}
		set
		{
			flatStyle = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public DataGridViewComboBoxCell.ObjectCollection Items
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).Items;
		}
	}

	[DefaultValue(8)]
	public int MaxDropDownItems
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).MaxDropDownItems;
		}
		set
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			(base.CellTemplate as DataGridViewComboBoxCell).MaxDropDownItems = value;
		}
	}

	[DefaultValue(false)]
	public bool Sorted
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).Sorted;
		}
		set
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			(base.CellTemplate as DataGridViewComboBoxCell).Sorted = value;
		}
	}

	[TypeConverter("System.Windows.Forms.Design.DataMemberFieldConverter, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[Editor("System.Windows.Forms.Design.DataMemberFieldEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public string ValueMember
	{
		get
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			return (base.CellTemplate as DataGridViewComboBoxCell).ValueMember;
		}
		set
		{
			if (base.CellTemplate == null)
			{
				throw new InvalidOperationException("CellTemplate is null.");
			}
			(base.CellTemplate as DataGridViewComboBoxCell).ValueMember = value;
		}
	}

	public DataGridViewComboBoxColumn()
	{
		CellTemplate = new DataGridViewComboBoxCell();
		((DataGridViewComboBoxCell)CellTemplate).OwningColumnTemplate = this;
		SortMode = DataGridViewColumnSortMode.NotSortable;
		autoComplete = true;
		displayStyle = DataGridViewComboBoxDisplayStyle.DropDownButton;
		displayStyleForCurrentCellOnly = false;
	}

	internal void SyncItems(IList items)
	{
		if (DataSource != null || DataGridView == null)
		{
			return;
		}
		for (int i = 0; i < DataGridView.RowCount; i++)
		{
			if (DataGridView.Rows[i].Cells[Index] is DataGridViewComboBoxCell dataGridViewComboBoxCell)
			{
				dataGridViewComboBoxCell.Items.ClearInternal();
				dataGridViewComboBoxCell.Items.AddRangeInternal(Items);
			}
		}
	}

	public override object Clone()
	{
		DataGridViewComboBoxColumn dataGridViewComboBoxColumn = (DataGridViewComboBoxColumn)base.Clone();
		dataGridViewComboBoxColumn.autoComplete = autoComplete;
		dataGridViewComboBoxColumn.displayStyle = displayStyle;
		dataGridViewComboBoxColumn.displayStyleForCurrentCellOnly = displayStyleForCurrentCellOnly;
		dataGridViewComboBoxColumn.flatStyle = flatStyle;
		dataGridViewComboBoxColumn.CellTemplate = (DataGridViewComboBoxCell)CellTemplate.Clone();
		return dataGridViewComboBoxColumn;
	}

	public override string ToString()
	{
		return GetType().Name;
	}
}
