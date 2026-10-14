using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms.Layout;

namespace System.Windows.Forms;

[DefaultProperty("ColumnCount")]
[ClassInterface(ClassInterfaceType.AutoDispatch)]
[ComVisible(true)]
[ProvideProperty("Column", typeof(Control))]
[ProvideProperty("ColumnSpan", typeof(Control))]
[ProvideProperty("Row", typeof(Control))]
[ProvideProperty("RowSpan", typeof(Control))]
[ProvideProperty("CellPosition", typeof(Control))]
[Docking(DockingBehavior.Never)]
[Designer("System.Windows.Forms.Design.TableLayoutPanelDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DesignerSerializer("System.Windows.Forms.Design.TableLayoutPanelCodeDomSerializer, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.Serialization.CodeDomSerializer, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class TableLayoutPanel : Panel, IExtenderProvider
{
	private TableLayoutSettings settings;

	private static TableLayout layout_engine = new TableLayout();

	private TableLayoutPanelCellBorderStyle cell_border_style;

	internal Control[,] actual_positions;

	internal int[] column_widths;

	internal int[] row_heights;

	private static object CellPaintEvent = new object();

	[Localizable(true)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new BorderStyle BorderStyle
	{
		get
		{
			return base.BorderStyle;
		}
		set
		{
			base.BorderStyle = value;
		}
	}

	[DefaultValue(TableLayoutPanelCellBorderStyle.None)]
	[Localizable(true)]
	public TableLayoutPanelCellBorderStyle CellBorderStyle
	{
		get
		{
			return cell_border_style;
		}
		set
		{
			if (cell_border_style != value)
			{
				cell_border_style = value;
				PerformLayout(this, "CellBorderStyle");
				Invalidate();
			}
		}
	}

	[DefaultValue(0)]
	[Localizable(true)]
	public int ColumnCount
	{
		get
		{
			return settings.ColumnCount;
		}
		set
		{
			settings.ColumnCount = value;
		}
	}

	[MergableProperty(false)]
	[DisplayName("Columns")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TableLayoutColumnStyleCollection ColumnStyles => settings.ColumnStyles;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public new TableLayoutControlCollection Controls => (TableLayoutControlCollection)base.Controls;

	[DefaultValue(TableLayoutPanelGrowStyle.AddRows)]
	public TableLayoutPanelGrowStyle GrowStyle
	{
		get
		{
			return settings.GrowStyle;
		}
		set
		{
			settings.GrowStyle = value;
		}
	}

	public override LayoutEngine LayoutEngine => layout_engine;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TableLayoutSettings LayoutSettings
	{
		get
		{
			return settings;
		}
		set
		{
			if (value.isSerialized)
			{
				value.ColumnCount = value.ColumnStyles.Count;
				value.RowCount = value.RowStyles.Count;
				value.panel = this;
				settings = value;
				return;
			}
			throw new NotSupportedException("LayoutSettings value cannot be set directly.");
		}
	}

	[Localizable(true)]
	[DefaultValue(0)]
	public int RowCount
	{
		get
		{
			return settings.RowCount;
		}
		set
		{
			settings.RowCount = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[MergableProperty(false)]
	[DisplayName("Rows")]
	[Browsable(false)]
	public TableLayoutRowStyleCollection RowStyles => settings.RowStyles;

	public event TableLayoutCellPaintEventHandler CellPaint
	{
		add
		{
			Events.AddHandler(CellPaintEvent, value);
		}
		remove
		{
			Events.RemoveHandler(CellPaintEvent, value);
		}
	}

	public TableLayoutPanel()
	{
		settings = new TableLayoutSettings(this);
		cell_border_style = TableLayoutPanelCellBorderStyle.None;
		column_widths = new int[0];
		row_heights = new int[0];
		CreateDockPadding();
	}

	[DisplayName("Cell")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(-1)]
	public TableLayoutPanelCellPosition GetCellPosition(Control control)
	{
		return settings.GetCellPosition(control);
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(-1)]
	[DisplayName("Column")]
	public int GetColumn(Control control)
	{
		return settings.GetColumn(control);
	}

	[DefaultValue(1)]
	[DisplayName("ColumnSpan")]
	public int GetColumnSpan(Control control)
	{
		return settings.GetColumnSpan(control);
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public int[] GetColumnWidths()
	{
		return column_widths;
	}

	public Control GetControlFromPosition(int column, int row)
	{
		if (column < 0 || row < 0)
		{
			throw new ArgumentException();
		}
		TableLayoutPanelCellPosition tableLayoutPanelCellPosition = new TableLayoutPanelCellPosition(column, row);
		foreach (Control control in Controls)
		{
			if (settings.GetCellPosition(control) == tableLayoutPanelCellPosition)
			{
				return control;
			}
		}
		return null;
	}

	public TableLayoutPanelCellPosition GetPositionFromControl(Control control)
	{
		for (int i = 0; i < actual_positions.GetLength(0); i++)
		{
			for (int j = 0; j < actual_positions.GetLength(1); j++)
			{
				if (actual_positions[i, j] == control)
				{
					return new TableLayoutPanelCellPosition(i, j);
				}
			}
		}
		return new TableLayoutPanelCellPosition(-1, -1);
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DisplayName("Row")]
	[DefaultValue("-1")]
	public int GetRow(Control control)
	{
		return settings.GetRow(control);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public int[] GetRowHeights()
	{
		return row_heights;
	}

	[DefaultValue(1)]
	[DisplayName("RowSpan")]
	public int GetRowSpan(Control control)
	{
		return settings.GetRowSpan(control);
	}

	public void SetCellPosition(Control control, TableLayoutPanelCellPosition position)
	{
		settings.SetCellPosition(control, position);
	}

	public void SetColumn(Control control, int column)
	{
		settings.SetColumn(control, column);
	}

	public void SetColumnSpan(Control control, int value)
	{
		settings.SetColumnSpan(control, value);
	}

	public void SetRow(Control control, int row)
	{
		settings.SetRow(control, row);
	}

	public void SetRowSpan(Control control, int value)
	{
		settings.SetRowSpan(control, value);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override ControlCollection CreateControlsInstance()
	{
		return new TableLayoutControlCollection(this);
	}

	protected virtual void OnCellPaint(TableLayoutCellPaintEventArgs e)
	{
		((TableLayoutCellPaintEventHandler)Events[CellPaintEvent])?.Invoke(this, e);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void OnLayout(LayoutEventArgs levent)
	{
		base.OnLayout(levent);
		Invalidate();
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		base.OnPaintBackground(e);
		DrawCellBorders(e);
		int cellBorderWidth = GetCellBorderWidth(CellBorderStyle);
		int num = cellBorderWidth;
		int num2 = cellBorderWidth;
		for (int i = 0; i < column_widths.Length; i++)
		{
			for (int j = 0; j < row_heights.Length; j++)
			{
				OnCellPaint(new TableLayoutCellPaintEventArgs(e.Graphics, e.ClipRectangle, new Rectangle(num, num2, column_widths[i] + cellBorderWidth, row_heights[j] + cellBorderWidth), i, j));
				num2 += row_heights[j] + cellBorderWidth;
			}
			num += column_widths[i] + cellBorderWidth;
			num2 = cellBorderWidth;
		}
	}

	protected override void ScaleControl(SizeF factor, BoundsSpecified specified)
	{
		base.ScaleControl(factor, specified);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected override void ScaleCore(float dx, float dy)
	{
		base.ScaleCore(dx, dy);
	}

	internal static int GetCellBorderWidth(TableLayoutPanelCellBorderStyle style)
	{
		switch (style)
		{
		case TableLayoutPanelCellBorderStyle.Single:
			return 1;
		case TableLayoutPanelCellBorderStyle.Inset:
		case TableLayoutPanelCellBorderStyle.Outset:
			return 2;
		case TableLayoutPanelCellBorderStyle.InsetDouble:
		case TableLayoutPanelCellBorderStyle.OutsetDouble:
		case TableLayoutPanelCellBorderStyle.OutsetPartial:
			return 3;
		default:
			return 0;
		}
	}

	private void DrawCellBorders(PaintEventArgs e)
	{
		Rectangle rect = new Rectangle(Point.Empty, Size);
		switch (CellBorderStyle)
		{
		case TableLayoutPanelCellBorderStyle.Single:
			DrawSingleBorder(e.Graphics, rect);
			break;
		case TableLayoutPanelCellBorderStyle.Inset:
			DrawInsetBorder(e.Graphics, rect);
			break;
		case TableLayoutPanelCellBorderStyle.InsetDouble:
			DrawInsetDoubleBorder(e.Graphics, rect);
			break;
		case TableLayoutPanelCellBorderStyle.Outset:
			DrawOutsetBorder(e.Graphics, rect);
			break;
		case TableLayoutPanelCellBorderStyle.OutsetDouble:
		case TableLayoutPanelCellBorderStyle.OutsetPartial:
			DrawOutsetDoubleBorder(e.Graphics, rect);
			break;
		}
	}

	private void DrawSingleBorder(Graphics g, Rectangle rect)
	{
		ControlPaint.DrawBorder(g, rect, SystemColors.ControlDark, ButtonBorderStyle.Solid);
		int num = DisplayRectangle.X;
		int num2 = DisplayRectangle.Y;
		for (int i = 0; i < column_widths.Length - 1; i++)
		{
			num += column_widths[i] + 1;
			g.DrawLine(SystemPens.ControlDark, new Point(num, 1), new Point(num, Bottom - 2));
		}
		for (int j = 0; j < row_heights.Length - 1; j++)
		{
			num2 += row_heights[j] + 1;
			g.DrawLine(SystemPens.ControlDark, new Point(1, num2), new Point(Right - 2, num2));
		}
	}

	private void DrawInsetBorder(Graphics g, Rectangle rect)
	{
		ControlPaint.DrawBorder3D(g, rect, Border3DStyle.Etched);
		int num = DisplayRectangle.X;
		int num2 = DisplayRectangle.Y;
		for (int i = 0; i < column_widths.Length - 1; i++)
		{
			num += column_widths[i] + 2;
			g.DrawLine(SystemPens.ControlDark, new Point(num, 1), new Point(num, Bottom - 3));
			g.DrawLine(Pens.White, new Point(num + 1, 1), new Point(num + 1, Bottom - 3));
		}
		for (int j = 0; j < row_heights.Length - 1; j++)
		{
			num2 += row_heights[j] + 2;
			g.DrawLine(SystemPens.ControlDark, new Point(1, num2), new Point(Right - 3, num2));
			g.DrawLine(Pens.White, new Point(1, num2 + 1), new Point(Right - 3, num2 + 1));
		}
	}

	private void DrawOutsetBorder(Graphics g, Rectangle rect)
	{
		g.DrawRectangle(SystemPens.ControlDark, new Rectangle(rect.Left + 1, rect.Top + 1, rect.Width - 2, rect.Height - 2));
		g.DrawRectangle(Pens.White, new Rectangle(rect.Left, rect.Top, rect.Width - 2, rect.Height - 2));
		int num = DisplayRectangle.X;
		int num2 = DisplayRectangle.Y;
		for (int i = 0; i < column_widths.Length - 1; i++)
		{
			num += column_widths[i] + 2;
			g.DrawLine(Pens.White, new Point(num, 1), new Point(num, Bottom - 3));
			g.DrawLine(SystemPens.ControlDark, new Point(num + 1, 1), new Point(num + 1, Bottom - 3));
		}
		for (int j = 0; j < row_heights.Length - 1; j++)
		{
			num2 += row_heights[j] + 2;
			g.DrawLine(Pens.White, new Point(1, num2), new Point(Right - 3, num2));
			g.DrawLine(SystemPens.ControlDark, new Point(1, num2 + 1), new Point(Right - 3, num2 + 1));
		}
	}

	private void DrawOutsetDoubleBorder(Graphics g, Rectangle rect)
	{
		rect.Width--;
		rect.Height--;
		g.DrawRectangle(SystemPens.ControlDark, new Rectangle(rect.Left + 2, rect.Top + 2, rect.Width - 2, rect.Height - 2));
		g.DrawRectangle(Pens.White, new Rectangle(rect.Left, rect.Top, rect.Width - 2, rect.Height - 2));
		int num = DisplayRectangle.X;
		int num2 = DisplayRectangle.Y;
		for (int i = 0; i < column_widths.Length - 1; i++)
		{
			num += column_widths[i] + 3;
			g.DrawLine(Pens.White, new Point(num, 3), new Point(num, Bottom - 5));
			g.DrawLine(SystemPens.ControlDark, new Point(num + 2, 3), new Point(num + 2, Bottom - 5));
		}
		for (int j = 0; j < row_heights.Length - 1; j++)
		{
			num2 += row_heights[j] + 3;
			g.DrawLine(Pens.White, new Point(3, num2), new Point(Right - 4, num2));
			g.DrawLine(SystemPens.ControlDark, new Point(3, num2 + 2), new Point(Right - 4, num2 + 2));
		}
		num = DisplayRectangle.X;
		num2 = DisplayRectangle.Y;
		for (int k = 0; k < column_widths.Length - 1; k++)
		{
			num += column_widths[k] + 3;
			g.DrawLine(ThemeEngine.Current.ResPool.GetPen(BackColor), new Point(num + 1, 3), new Point(num + 1, Bottom - 5));
		}
		for (int l = 0; l < row_heights.Length - 1; l++)
		{
			num2 += row_heights[l] + 3;
			g.DrawLine(ThemeEngine.Current.ResPool.GetPen(BackColor), new Point(3, num2 + 1), new Point(Right - 4, num2 + 1));
		}
	}

	private void DrawInsetDoubleBorder(Graphics g, Rectangle rect)
	{
		rect.Width--;
		rect.Height--;
		g.DrawRectangle(Pens.White, new Rectangle(rect.Left + 2, rect.Top + 2, rect.Width - 2, rect.Height - 2));
		g.DrawRectangle(SystemPens.ControlDark, new Rectangle(rect.Left, rect.Top, rect.Width - 2, rect.Height - 2));
		int num = DisplayRectangle.X;
		int num2 = DisplayRectangle.Y;
		for (int i = 0; i < column_widths.Length - 1; i++)
		{
			num += column_widths[i] + 3;
			g.DrawLine(SystemPens.ControlDark, new Point(num, 3), new Point(num, Bottom - 5));
			g.DrawLine(Pens.White, new Point(num + 2, 3), new Point(num + 2, Bottom - 5));
		}
		for (int j = 0; j < row_heights.Length - 1; j++)
		{
			num2 += row_heights[j] + 3;
			g.DrawLine(SystemPens.ControlDark, new Point(3, num2), new Point(Right - 4, num2));
			g.DrawLine(Pens.White, new Point(3, num2 + 2), new Point(Right - 4, num2 + 2));
		}
		num = DisplayRectangle.X;
		num2 = DisplayRectangle.Y;
		for (int k = 0; k < column_widths.Length - 1; k++)
		{
			num += column_widths[k] + 3;
			g.DrawLine(ThemeEngine.Current.ResPool.GetPen(BackColor), new Point(num + 1, 3), new Point(num + 1, Bottom - 5));
		}
		for (int l = 0; l < row_heights.Length - 1; l++)
		{
			num2 += row_heights[l] + 3;
			g.DrawLine(ThemeEngine.Current.ResPool.GetPen(BackColor), new Point(3, num2 + 1), new Point(Right - 4, num2 + 1));
		}
	}

	internal override Size GetPreferredSizeCore(Size proposedSize)
	{
		actual_positions = (LayoutEngine as TableLayout).CalculateControlPositions(this, Math.Max(ColumnCount, 1), Math.Max(RowCount, 1));
		int length = actual_positions.GetLength(0);
		int length2 = actual_positions.GetLength(1);
		int num = 1;
		int num2 = 1;
		foreach (Control control4 in Controls)
		{
			num = Math.Max(num, GetColumnSpan(control4));
			num2 = Math.Max(num2, GetRowSpan(control4));
		}
		int[] array = new int[length];
		int[,] array2 = new int[length, num];
		int[] array3 = new int[num];
		float num3 = 0f;
		for (int i = 0; i < length; i++)
		{
			if (i < ColumnStyles.Count && ColumnStyles[i].SizeType == SizeType.Percent)
			{
				num3 += ColumnStyles[i].Width;
			}
			int num4 = -1;
			if (i < ColumnStyles.Count && ColumnStyles[i].SizeType == SizeType.Absolute)
			{
				num4 = (int)ColumnStyles[i].Width;
			}
			for (int j = 0; j < num; j++)
			{
				array3[j] = 0;
			}
			for (int k = 0; k < length2; k++)
			{
				Control control2 = actual_positions[i, k];
				if (control2 != null)
				{
					int columnSpan = GetColumnSpan(control2);
					if (columnSpan != 0)
					{
						if (columnSpan == 1 && num4 > -1)
						{
							array3[0] = num4;
						}
						else if (!control2.AutoSize)
						{
							array3[columnSpan - 1] = Math.Max(array3[columnSpan - 1], control2.ExplicitBounds.Width + control2.Margin.Horizontal + Padding.Horizontal);
						}
						else
						{
							array3[columnSpan - 1] = Math.Max(array3[columnSpan - 1], control2.PreferredSize.Width + control2.Margin.Horizontal + Padding.Horizontal);
						}
					}
				}
				else if (num4 > -1)
				{
					array3[0] = num4;
				}
			}
			for (int l = 0; l < num; l++)
			{
				array2[i, l] = array3[l];
			}
		}
		for (int m = 0; m < length; m++)
		{
			for (int n = 1; n < num; n++)
			{
				if (array2[m, n] > 0)
				{
					AdjustWidthsForSpans(array2, m, n);
				}
			}
			array[m] = array2[m, 0];
		}
		int num5 = 0;
		int num6 = 0;
		for (int num7 = 0; num7 < length; num7++)
		{
			if (num7 < ColumnStyles.Count && ColumnStyles[num7].SizeType == SizeType.Percent)
			{
				num6 = Math.Max(num6, (int)((float)array[num7] / (ColumnStyles[num7].Width / num3)));
			}
			else
			{
				num5 += array[num7];
			}
		}
		int cellBorderWidth = GetCellBorderWidth(CellBorderStyle);
		int width = num5 + num6 + cellBorderWidth * (length + 1);
		int[] array4 = new int[length2];
		int[,] array5 = new int[length2, num2];
		array3 = new int[num2];
		float num8 = 0f;
		for (int num9 = 0; num9 < length2; num9++)
		{
			if (num9 < RowStyles.Count && RowStyles[num9].SizeType == SizeType.Percent)
			{
				num8 += RowStyles[num9].Height;
			}
			int num10 = -1;
			if (num9 < RowStyles.Count && RowStyles[num9].SizeType == SizeType.Absolute)
			{
				num10 = (int)RowStyles[num9].Height;
			}
			for (int num11 = 0; num11 < num2; num11++)
			{
				array3[num11] = 0;
			}
			for (int num12 = 0; num12 < length; num12++)
			{
				Control control3 = actual_positions[num12, num9];
				if (control3 != null)
				{
					int rowSpan = GetRowSpan(control3);
					if (rowSpan != 0)
					{
						if (rowSpan == 1 && num10 > -1)
						{
							array3[0] = num10;
						}
						else if (!control3.AutoSize)
						{
							array3[rowSpan - 1] = Math.Max(array3[rowSpan - 1], control3.ExplicitBounds.Height + control3.Margin.Vertical + Padding.Vertical);
						}
						else
						{
							array3[rowSpan - 1] = Math.Max(array3[rowSpan - 1], control3.PreferredSize.Height + control3.Margin.Vertical + Padding.Vertical);
						}
					}
				}
				else if (num10 > -1)
				{
					array3[0] = num10;
				}
			}
			for (int num13 = 0; num13 < num2; num13++)
			{
				array5[num9, num13] = array3[num13];
			}
		}
		for (int num14 = 0; num14 < length2; num14++)
		{
			for (int num15 = 1; num15 < num2; num15++)
			{
				if (array5[num14, num15] > 0)
				{
					AdjustHeightsForSpans(array5, num14, num15);
				}
			}
			array4[num14] = array5[num14, 0];
		}
		int num16 = 0;
		int num17 = 0;
		for (int num18 = 0; num18 < length2; num18++)
		{
			if (num18 < RowStyles.Count && RowStyles[num18].SizeType == SizeType.Percent)
			{
				num17 = Math.Max(num17, (int)((float)array4[num18] / (RowStyles[num18].Height / num8)));
			}
			else
			{
				num16 += array4[num18];
			}
		}
		int height = num16 + num17 + cellBorderWidth * (length2 + 1);
		return new Size(width, height);
	}

	private void AdjustWidthsForSpans(int[,] widths, int col, int span)
	{
		int num = 0;
		for (int i = col; i <= col + span; i++)
		{
			num += widths[i, 0];
		}
		if (widths[col, span] <= num)
		{
			return;
		}
		int num2 = widths[col, span] - num;
		int num3 = num2;
		List<int> list = new List<int>();
		List<float> list2 = new List<float>();
		for (int j = col; j <= col + span; j++)
		{
			if (j < ColumnStyles.Count && ColumnStyles[j].SizeType != SizeType.Absolute)
			{
				list.Add(j);
				list2.Add(widths[j, 0]);
			}
		}
		if (list.Count == 0)
		{
			for (int k = col; k <= col + span; k++)
			{
				list.Add(k);
				list2.Add(widths[k, 0]);
			}
		}
		float num4 = 0f;
		foreach (float item in list2)
		{
			num4 += item;
		}
		for (int l = 0; l < list.Count; l++)
		{
			int num5 = list[l];
			int num6 = (int)(list2[l] / num4 * (float)num2);
			widths[num5, 0] += num6;
			num3 -= num6;
		}
		while (num3 > 0)
		{
			for (int m = 0; m < list.Count; m++)
			{
				if (num3 <= 0)
				{
					break;
				}
				widths[list[m], 0]++;
				num3--;
			}
		}
	}

	private void AdjustHeightsForSpans(int[,] heights, int row, int span)
	{
		int num = 0;
		for (int i = row; i <= row + span; i++)
		{
			num += heights[i, 0];
		}
		if (heights[row, span] <= num)
		{
			return;
		}
		int num2 = heights[row, span] - num;
		int num3 = num2;
		List<int> list = new List<int>();
		List<float> list2 = new List<float>();
		for (int j = row; j <= row + span; j++)
		{
			if (j < RowStyles.Count && RowStyles[j].SizeType != SizeType.Absolute)
			{
				list.Add(j);
				list2.Add(heights[j, 0]);
			}
		}
		if (list.Count == 0)
		{
			for (int k = row; k <= row + span; k++)
			{
				list.Add(k);
				list2.Add(heights[k, 0]);
			}
		}
		float num4 = 0f;
		foreach (float item in list2)
		{
			num4 += item;
		}
		for (int l = 0; l < list.Count; l++)
		{
			int num5 = list[l];
			int num6 = (int)(list2[l] / num4 * (float)num2);
			heights[num5, 0] += num6;
			num3 -= num6;
		}
		while (num3 > 0)
		{
			for (int m = 0; m < list.Count; m++)
			{
				if (num3 <= 0)
				{
					break;
				}
				heights[list[m], 0]++;
				num3--;
			}
		}
	}

	bool IExtenderProvider.CanExtend(object obj)
	{
		if (obj is Control && (obj as Control).Parent == this)
		{
			return true;
		}
		return false;
	}
}
