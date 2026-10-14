using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms.VisualStyles;

namespace System.Windows.Forms;

public class DataGridViewButtonCell : DataGridViewCell
{
	protected class DataGridViewButtonCellAccessibleObject : DataGridViewCellAccessibleObject
	{
		public override string DefaultAction
		{
			get
			{
				if (Owner.ReadOnly)
				{
					return "Press";
				}
				return "";
			}
		}

		public DataGridViewButtonCellAccessibleObject(DataGridViewCell owner)
			: base(owner)
		{
		}

		public override void DoDefaultAction()
		{
		}

		public override int GetChildCount()
		{
			return -1;
		}
	}

	private FlatStyle flatStyle;

	private bool useColumnTextForButtonValue;

	private PushButtonState button_state;

	public override Type EditType => null;

	[DefaultValue(FlatStyle.Standard)]
	public FlatStyle FlatStyle
	{
		get
		{
			return flatStyle;
		}
		set
		{
			if (!Enum.IsDefined(typeof(FlatStyle), value))
			{
				throw new InvalidEnumArgumentException("Value is not valid FlatStyle.");
			}
			if (value == FlatStyle.Popup)
			{
				throw new Exception("FlatStyle cannot be set to Popup in this control.");
			}
		}
	}

	public override Type FormattedValueType => typeof(string);

	[DefaultValue(false)]
	public bool UseColumnTextForButtonValue
	{
		get
		{
			return useColumnTextForButtonValue;
		}
		set
		{
			useColumnTextForButtonValue = value;
		}
	}

	public override Type ValueType
	{
		get
		{
			if (!(base.ValueType == null))
			{
				return base.ValueType;
			}
			return typeof(object);
		}
	}

	public DataGridViewButtonCell()
	{
		useColumnTextForButtonValue = false;
		button_state = PushButtonState.Normal;
	}

	public override object Clone()
	{
		DataGridViewButtonCell dataGridViewButtonCell = (DataGridViewButtonCell)base.Clone();
		dataGridViewButtonCell.flatStyle = flatStyle;
		dataGridViewButtonCell.useColumnTextForButtonValue = useColumnTextForButtonValue;
		return dataGridViewButtonCell;
	}

	public override string ToString()
	{
		return GetType().Name + ": RowIndex: " + RowIndex + "; ColumnIndex: " + ColumnIndex + ";";
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new DataGridViewButtonCellAccessibleObject(this);
	}

	protected override Rectangle GetContentBounds(Graphics graphics, DataGridViewCellStyle cellStyle, int rowIndex)
	{
		if (DataGridView == null)
		{
			return Rectangle.Empty;
		}
		Rectangle empty = Rectangle.Empty;
		empty.Height = OwningRow.Height - 1;
		empty.Width = OwningColumn.Width - 1;
		return empty;
	}

	protected override Rectangle GetErrorIconBounds(Graphics graphics, DataGridViewCellStyle cellStyle, int rowIndex)
	{
		if (DataGridView == null || string.IsNullOrEmpty(ErrorText))
		{
			return Rectangle.Empty;
		}
		Size size = new Size(12, 11);
		return new Rectangle(new Point(Size.Width - size.Width - 5, (Size.Height - size.Height) / 2), size);
	}

	protected override Size GetPreferredSize(Graphics graphics, DataGridViewCellStyle cellStyle, int rowIndex, Size constraintSize)
	{
		object formattedValue = FormattedValue;
		if (formattedValue != null)
		{
			Size result = DataGridViewCell.MeasureTextSize(graphics, formattedValue.ToString(), cellStyle.Font, TextFormatFlags.Left);
			result.Height = Math.Max(result.Height, 21);
			result.Width += 10;
			return result;
		}
		return new Size(21, 21);
	}

	protected override object GetValue(int rowIndex)
	{
		if (useColumnTextForButtonValue)
		{
			return (OwningColumn as DataGridViewButtonColumn).Text;
		}
		return base.GetValue(rowIndex);
	}

	protected override bool KeyDownUnsharesRow(KeyEventArgs e, int rowIndex)
	{
		return e.KeyData == Keys.Space;
	}

	protected override bool KeyUpUnsharesRow(KeyEventArgs e, int rowIndex)
	{
		return e.KeyData == Keys.Space;
	}

	protected override bool MouseDownUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		return e.Button == MouseButtons.Left;
	}

	protected override bool MouseEnterUnsharesRow(int rowIndex)
	{
		return false;
	}

	protected override bool MouseLeaveUnsharesRow(int rowIndex)
	{
		return button_state == PushButtonState.Pressed;
	}

	protected override bool MouseUpUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		return e.Button == MouseButtons.Left;
	}

	protected override void OnKeyDown(KeyEventArgs e, int rowIndex)
	{
		if ((e.KeyData & Keys.Space) == Keys.Space)
		{
			button_state = PushButtonState.Pressed;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnKeyUp(KeyEventArgs e, int rowIndex)
	{
		if ((e.KeyData & Keys.Space) == Keys.Space)
		{
			button_state = PushButtonState.Normal;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnLeave(int rowIndex, bool throughMouseClick)
	{
		if (button_state != PushButtonState.Normal)
		{
			button_state = PushButtonState.Normal;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnMouseDown(DataGridViewCellMouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Left) == MouseButtons.Left)
		{
			button_state = PushButtonState.Pressed;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnMouseLeave(int rowIndex)
	{
		if (button_state != PushButtonState.Normal)
		{
			button_state = PushButtonState.Normal;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnMouseMove(DataGridViewCellMouseEventArgs e)
	{
		if (button_state != PushButtonState.Normal && button_state != PushButtonState.Hot)
		{
			button_state = PushButtonState.Hot;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnMouseUp(DataGridViewCellMouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Left) == MouseButtons.Left)
		{
			button_state = PushButtonState.Normal;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void Paint(Graphics graphics, Rectangle clipBounds, Rectangle cellBounds, int rowIndex, DataGridViewElementStates elementState, object value, object formattedValue, string errorText, DataGridViewCellStyle cellStyle, DataGridViewAdvancedBorderStyle advancedBorderStyle, DataGridViewPaintParts paintParts)
	{
		base.Paint(graphics, clipBounds, cellBounds, rowIndex, elementState, value, formattedValue, errorText, cellStyle, advancedBorderStyle, paintParts);
	}

	internal override void PaintPartBackground(Graphics graphics, Rectangle cellBounds, DataGridViewCellStyle style)
	{
		ButtonRenderer.DrawButton(graphics, cellBounds, button_state);
	}

	internal override void PaintPartSelectionBackground(Graphics graphics, Rectangle cellBounds, DataGridViewElementStates cellState, DataGridViewCellStyle cellStyle)
	{
		cellBounds.Inflate(-2, -2);
		base.PaintPartSelectionBackground(graphics, cellBounds, cellState, cellStyle);
	}

	internal override void PaintPartContent(Graphics graphics, Rectangle cellBounds, int rowIndex, DataGridViewElementStates cellState, DataGridViewCellStyle cellStyle, object formattedValue)
	{
		Color foreColor = (Selected ? cellStyle.SelectionForeColor : cellStyle.ForeColor);
		TextFormatFlags flags = TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter | TextFormatFlags.TextBoxControl | TextFormatFlags.EndEllipsis;
		cellBounds.Height -= 2;
		cellBounds.Width -= 2;
		if (formattedValue != null)
		{
			TextRenderer.DrawText(graphics, formattedValue.ToString(), cellStyle.Font, cellBounds, foreColor, flags);
		}
	}
}
