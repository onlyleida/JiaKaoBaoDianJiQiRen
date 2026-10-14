using System.ComponentModel;
using System.Drawing;

namespace System.Windows.Forms;

public class DataGridViewHeaderCell : DataGridViewCell
{
	private ButtonState buttonState;

	[Browsable(false)]
	public override bool Displayed => base.Displayed;

	public override Type FormattedValueType => typeof(string);

	[Browsable(false)]
	public override bool Frozen => base.Frozen;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override bool ReadOnly
	{
		get
		{
			return base.ReadOnly;
		}
		set
		{
			base.ReadOnly = value;
		}
	}

	[Browsable(false)]
	public override bool Resizable => base.Resizable;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override bool Selected
	{
		get
		{
			return base.Selected;
		}
		set
		{
			base.Selected = value;
		}
	}

	public override Type ValueType
	{
		get
		{
			return base.ValueType;
		}
		set
		{
			base.ValueType = value;
		}
	}

	[Browsable(false)]
	public override bool Visible => base.Visible;

	protected ButtonState ButtonState => buttonState;

	public DataGridViewHeaderCell()
	{
		buttonState = ButtonState.Normal;
	}

	public override object Clone()
	{
		return new DataGridViewHeaderCell();
	}

	protected override void Dispose(bool disposing)
	{
	}

	public override ContextMenuStrip GetInheritedContextMenuStrip(int rowIndex)
	{
		if (DataGridView == null)
		{
			return null;
		}
		if (ContextMenuStrip != null)
		{
			return ContextMenuStrip;
		}
		if (DataGridView.ContextMenuStrip != null)
		{
			return DataGridView.ContextMenuStrip;
		}
		return null;
	}

	public override DataGridViewElementStates GetInheritedState(int rowIndex)
	{
		return DataGridViewElementStates.ResizableSet | State;
	}

	public override string ToString()
	{
		return $"DataGridViewHeaderCell {{ ColumnIndex={ColumnIndex}, RowIndex={RowIndex} }}";
	}

	protected override Size GetSize(int rowIndex)
	{
		if (DataGridView == null && rowIndex != -1)
		{
			throw new ArgumentOutOfRangeException("rowIndex");
		}
		if (OwningColumn != null && rowIndex != -1)
		{
			throw new ArgumentOutOfRangeException("rowIndex");
		}
		if (OwningRow != null && (rowIndex < 0 || rowIndex >= DataGridView.Rows.Count))
		{
			throw new ArgumentOutOfRangeException("rowIndex");
		}
		if (OwningColumn == null && OwningRow == null && rowIndex != -1)
		{
			throw new ArgumentOutOfRangeException("rowIndex");
		}
		if (OwningRow != null && OwningRow.Index != rowIndex)
		{
			throw new ArgumentException("rowIndex");
		}
		if (DataGridView == null)
		{
			return new Size(-1, -1);
		}
		if (this is DataGridViewTopLeftHeaderCell)
		{
			return new Size(DataGridView.RowHeadersWidth, DataGridView.ColumnHeadersHeight);
		}
		if (this is DataGridViewColumnHeaderCell)
		{
			return new Size(100, DataGridView.ColumnHeadersHeight);
		}
		if (this is DataGridViewRowHeaderCell)
		{
			return new Size(DataGridView.RowHeadersWidth, 22);
		}
		return Size.Empty;
	}

	protected override object GetValue(int rowIndex)
	{
		return base.GetValue(rowIndex);
	}

	protected override bool MouseDownUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		if (DataGridView == null)
		{
			return false;
		}
		if (e.Button == MouseButtons.Left && Application.RenderWithVisualStyles && DataGridView.EnableHeadersVisualStyles)
		{
			return true;
		}
		return false;
	}

	protected override bool MouseEnterUnsharesRow(int rowIndex)
	{
		if (DataGridView == null)
		{
			return false;
		}
		if (Application.RenderWithVisualStyles && DataGridView.EnableHeadersVisualStyles)
		{
			return true;
		}
		return false;
	}

	protected override bool MouseLeaveUnsharesRow(int rowIndex)
	{
		if (DataGridView == null)
		{
			return false;
		}
		if (ButtonState != ButtonState.Normal && Application.RenderWithVisualStyles && DataGridView.EnableHeadersVisualStyles)
		{
			return true;
		}
		return false;
	}

	protected override bool MouseUpUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		if (DataGridView == null)
		{
			return false;
		}
		if (e.Button == MouseButtons.Left && Application.RenderWithVisualStyles && DataGridView.EnableHeadersVisualStyles)
		{
			return true;
		}
		return false;
	}

	protected override void OnMouseDown(DataGridViewCellMouseEventArgs e)
	{
		base.OnMouseDown(e);
	}

	protected override void OnMouseEnter(int rowIndex)
	{
		base.OnMouseEnter(rowIndex);
	}

	protected override void OnMouseLeave(int rowIndex)
	{
		base.OnMouseLeave(rowIndex);
	}

	protected override void OnMouseUp(DataGridViewCellMouseEventArgs e)
	{
		base.OnMouseUp(e);
	}

	protected override void Paint(Graphics graphics, Rectangle clipBounds, Rectangle cellBounds, int rowIndex, DataGridViewElementStates dataGridViewElementState, object value, object formattedValue, string errorText, DataGridViewCellStyle cellStyle, DataGridViewAdvancedBorderStyle advancedBorderStyle, DataGridViewPaintParts paintParts)
	{
		base.Paint(graphics, clipBounds, cellBounds, rowIndex, dataGridViewElementState, value, formattedValue, errorText, cellStyle, advancedBorderStyle, paintParts);
	}
}
