using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;

namespace System.Windows.Forms;

public class DataGridViewLinkCell : DataGridViewCell
{
	protected class DataGridViewLinkCellAccessibleObject : DataGridViewCellAccessibleObject
	{
		public override string DefaultAction => "Click";

		public DataGridViewLinkCellAccessibleObject(DataGridViewCell owner)
			: base(owner)
		{
		}

		[MonoTODO("Stub, does nothing")]
		[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
		public override void DoDefaultAction()
		{
		}

		public override int GetChildCount()
		{
			return -1;
		}
	}

	private Color activeLinkColor;

	private LinkBehavior linkBehavior;

	private Color linkColor;

	private bool linkVisited;

	private Cursor parent_cursor;

	private bool trackVisitedState;

	private bool useColumnTextForLinkValue;

	private Color visited_link_color;

	private LinkState linkState;

	public Color ActiveLinkColor
	{
		get
		{
			return activeLinkColor;
		}
		set
		{
			activeLinkColor = value;
		}
	}

	[DefaultValue(LinkBehavior.SystemDefault)]
	public LinkBehavior LinkBehavior
	{
		get
		{
			return linkBehavior;
		}
		set
		{
			linkBehavior = value;
		}
	}

	public Color LinkColor
	{
		get
		{
			return linkColor;
		}
		set
		{
			linkColor = value;
		}
	}

	public bool LinkVisited
	{
		get
		{
			return linkVisited;
		}
		set
		{
			linkVisited = value;
		}
	}

	[DefaultValue(true)]
	public bool TrackVisitedState
	{
		get
		{
			return trackVisitedState;
		}
		set
		{
			trackVisitedState = value;
		}
	}

	[DefaultValue(false)]
	public bool UseColumnTextForLinkValue
	{
		get
		{
			return useColumnTextForLinkValue;
		}
		set
		{
			useColumnTextForLinkValue = value;
		}
	}

	public Color VisitedLinkColor
	{
		get
		{
			return visited_link_color;
		}
		set
		{
			visited_link_color = value;
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

	public override Type EditType => null;

	public override Type FormattedValueType => typeof(string);

	public DataGridViewLinkCell()
	{
		activeLinkColor = Color.Red;
		linkColor = Color.FromArgb(0, 0, 255);
		trackVisitedState = true;
		visited_link_color = Color.FromArgb(128, 0, 128);
	}

	public override object Clone()
	{
		DataGridViewLinkCell dataGridViewLinkCell = (DataGridViewLinkCell)base.Clone();
		dataGridViewLinkCell.activeLinkColor = activeLinkColor;
		dataGridViewLinkCell.linkColor = linkColor;
		dataGridViewLinkCell.linkVisited = linkVisited;
		dataGridViewLinkCell.linkBehavior = linkBehavior;
		dataGridViewLinkCell.visited_link_color = visited_link_color;
		dataGridViewLinkCell.trackVisitedState = trackVisitedState;
		return dataGridViewLinkCell;
	}

	public override string ToString()
	{
		return $"DataGridViewLinkCell {{ ColumnIndex={ColumnIndex}, RowIndex={RowIndex} }}";
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new DataGridViewLinkCellAccessibleObject(this);
	}

	protected override Rectangle GetContentBounds(Graphics graphics, DataGridViewCellStyle cellStyle, int rowIndex)
	{
		if (DataGridView == null)
		{
			return Rectangle.Empty;
		}
		object formattedValue = FormattedValue;
		Size empty = Size.Empty;
		if (formattedValue != null)
		{
			empty = DataGridViewCell.MeasureTextSize(graphics, formattedValue.ToString(), cellStyle.Font, TextFormatFlags.Left);
			empty.Height += 3;
			return new Rectangle(1, (OwningRow.Height - empty.Height) / 2 - 1, empty.Width, empty.Height);
		}
		return new Rectangle(1, 10, 0, 0);
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
			result.Height = Math.Max(result.Height, 20);
			result.Width += 4;
			return result;
		}
		return new Size(21, 20);
	}

	protected override object GetValue(int rowIndex)
	{
		if (useColumnTextForLinkValue)
		{
			return (OwningColumn as DataGridViewLinkColumn).Text;
		}
		return base.GetValue(rowIndex);
	}

	protected override bool KeyUpUnsharesRow(KeyEventArgs e, int rowIndex)
	{
		if (e.KeyCode != Keys.Space && trackVisitedState && !linkVisited && !e.Shift && !e.Control && !e.Alt)
		{
			return true;
		}
		return false;
	}

	protected override bool MouseDownUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		return true;
	}

	protected override bool MouseLeaveUnsharesRow(int rowIndex)
	{
		return linkState != LinkState.Normal;
	}

	protected override bool MouseMoveUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		if (linkState == LinkState.Hover)
		{
			return true;
		}
		return false;
	}

	protected override bool MouseUpUnsharesRow(DataGridViewCellMouseEventArgs e)
	{
		return linkState == LinkState.Hover;
	}

	protected override void OnKeyUp(KeyEventArgs e, int rowIndex)
	{
		if ((e.KeyData & Keys.Space) == Keys.Space)
		{
			linkState = LinkState.Normal;
			DataGridView.InvalidateCell(this);
		}
	}

	protected override void OnMouseDown(DataGridViewCellMouseEventArgs e)
	{
		base.OnMouseDown(e);
		linkState = LinkState.Active;
		DataGridView.InvalidateCell(this);
	}

	protected override void OnMouseLeave(int rowIndex)
	{
		base.OnMouseLeave(rowIndex);
		linkState = LinkState.Normal;
		DataGridView.InvalidateCell(this);
		DataGridView.Cursor = parent_cursor;
	}

	protected override void OnMouseMove(DataGridViewCellMouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (linkState != LinkState.Hover)
		{
			linkState = LinkState.Hover;
			DataGridView.InvalidateCell(this);
			parent_cursor = DataGridView.Cursor;
			DataGridView.Cursor = Cursors.Hand;
		}
	}

	protected override void OnMouseUp(DataGridViewCellMouseEventArgs e)
	{
		base.OnMouseUp(e);
		linkState = LinkState.Hover;
		LinkVisited = true;
		DataGridView.InvalidateCell(this);
	}

	protected override void Paint(Graphics graphics, Rectangle clipBounds, Rectangle cellBounds, int rowIndex, DataGridViewElementStates cellState, object value, object formattedValue, string errorText, DataGridViewCellStyle cellStyle, DataGridViewAdvancedBorderStyle advancedBorderStyle, DataGridViewPaintParts paintParts)
	{
		base.Paint(graphics, clipBounds, cellBounds, rowIndex, cellState, value, formattedValue, errorText, cellStyle, advancedBorderStyle, paintParts);
	}

	internal override void PaintPartContent(Graphics graphics, Rectangle cellBounds, int rowIndex, DataGridViewElementStates cellState, DataGridViewCellStyle cellStyle, object formattedValue)
	{
		Font font = cellStyle.Font;
		switch (LinkBehavior)
		{
		case LinkBehavior.SystemDefault:
		case LinkBehavior.AlwaysUnderline:
			font = new Font(font, FontStyle.Underline);
			break;
		case LinkBehavior.HoverUnderline:
			if (linkState == LinkState.Hover)
			{
				font = new Font(font, FontStyle.Underline);
			}
			break;
		}
		Color foreColor;
		if (linkState == LinkState.Active)
		{
			foreColor = ActiveLinkColor;
		}
		else
		{
			foreColor = ((!linkVisited) ? LinkColor : VisitedLinkColor);
		}
		TextFormatFlags flags = TextFormatFlags.VerticalCenter | TextFormatFlags.TextBoxControl | TextFormatFlags.EndEllipsis;
		cellBounds.Height -= 2;
		cellBounds.Width -= 2;
		if (formattedValue != null)
		{
			TextRenderer.DrawText(graphics, formattedValue.ToString(), font, cellBounds, foreColor, flags);
		}
	}
}
