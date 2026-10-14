using System.Collections;
using System.Drawing;

namespace System.Windows.Forms.Layout;

internal class TableLayout : LayoutEngine
{
	private static Control dummy_control = new Control("Dummy");

	public override void InitLayout(object child, BoundsSpecified specified)
	{
		base.InitLayout(child, specified);
	}

	public override bool Layout(object container, LayoutEventArgs args)
	{
		TableLayoutPanel tableLayoutPanel = container as TableLayoutPanel;
		TableLayoutSettings layoutSettings = tableLayoutPanel.LayoutSettings;
		tableLayoutPanel.actual_positions = CalculateControlPositions(tableLayoutPanel, Math.Max(layoutSettings.ColumnCount, 1), Math.Max(layoutSettings.RowCount, 1));
		CalculateColumnRowSizes(tableLayoutPanel, tableLayoutPanel.actual_positions.GetLength(0), tableLayoutPanel.actual_positions.GetLength(1));
		LayoutControls(tableLayoutPanel);
		return false;
	}

	internal Control[,] CalculateControlPositions(TableLayoutPanel panel, int columns, int rows)
	{
		Control[,] array = new Control[columns, rows];
		TableLayoutSettings layoutSettings = panel.LayoutSettings;
		foreach (Control control3 in panel.Controls)
		{
			int num = layoutSettings.GetColumn(control3);
			int num2 = layoutSettings.GetRow(control3);
			if (num < 0 || num2 < 0)
			{
				continue;
			}
			if (num >= columns)
			{
				return CalculateControlPositions(panel, num + 1, rows);
			}
			if (num2 >= rows)
			{
				return CalculateControlPositions(panel, columns, num2 + 1);
			}
			if (array[num, num2] != null)
			{
				continue;
			}
			int num3 = Math.Min(layoutSettings.GetColumnSpan(control3), columns);
			int num4 = Math.Min(layoutSettings.GetRowSpan(control3), rows);
			if (num + num3 > columns)
			{
				if (num2 + 1 >= rows)
				{
					if (layoutSettings.GrowStyle == TableLayoutPanelGrowStyle.AddColumns)
					{
						return CalculateControlPositions(panel, columns + 1, rows);
					}
					throw new ArgumentException();
				}
				array[num, num2] = dummy_control;
				num2++;
				num = 0;
			}
			if (num2 + num4 > rows)
			{
				if (layoutSettings.GrowStyle == TableLayoutPanelGrowStyle.AddRows)
				{
					return CalculateControlPositions(panel, columns, rows + 1);
				}
				throw new ArgumentException();
			}
			array[num, num2] = control3;
			for (int i = 0; i < num3; i++)
			{
				for (int j = 0; j < num4; j++)
				{
					if (i != 0 || j != 0)
					{
						array[num + i, num2 + j] = dummy_control;
					}
				}
			}
		}
		int num5 = 0;
		foreach (Control control4 in panel.Controls)
		{
			int column = layoutSettings.GetColumn(control4);
			int row = layoutSettings.GetRow(control4);
			if (column >= 0 && column < columns && row >= 0 && row < rows && (array[column, row] == control4 || array[column, row] == dummy_control))
			{
				continue;
			}
			int num6 = num5;
			int num7;
			int num8;
			int num9;
			while (true)
			{
				if (num6 < rows)
				{
					num5 = num6;
					num7 = 0;
					while (num7 < columns)
					{
						if (array[num7, num6] != null)
						{
							if (layoutSettings.GrowStyle == TableLayoutPanelGrowStyle.AddColumns && layoutSettings.RowCount == 0)
							{
								break;
							}
							num7++;
							continue;
						}
						goto IL_021e;
					}
					goto IL_0313;
				}
				TableLayoutPanelGrowStyle tableLayoutPanelGrowStyle = layoutSettings.GrowStyle;
				if (layoutSettings.GrowStyle == TableLayoutPanelGrowStyle.AddColumns && layoutSettings.RowCount == 0)
				{
					tableLayoutPanelGrowStyle = TableLayoutPanelGrowStyle.AddRows;
				}
				return tableLayoutPanelGrowStyle switch
				{
					TableLayoutPanelGrowStyle.AddColumns => CalculateControlPositions(panel, columns + 1, rows), 
					TableLayoutPanelGrowStyle.FixedSize => throw new ArgumentException(), 
					_ => CalculateControlPositions(panel, columns, rows + 1), 
				};
				IL_021e:
				num8 = Math.Min(layoutSettings.GetColumnSpan(control4), columns);
				num9 = Math.Min(layoutSettings.GetRowSpan(control4), rows);
				if (num7 + num8 > columns)
				{
					if (num6 + 1 >= rows)
					{
						if (layoutSettings.GrowStyle == TableLayoutPanelGrowStyle.AddColumns)
						{
							return CalculateControlPositions(panel, columns + 1, rows);
						}
						throw new ArgumentException();
					}
				}
				else
				{
					if (num6 + num9 <= rows)
					{
						break;
					}
					if (num7 + 1 >= columns)
					{
						if (layoutSettings.GrowStyle == TableLayoutPanelGrowStyle.AddRows)
						{
							return CalculateControlPositions(panel, columns, rows + 1);
						}
						throw new ArgumentException();
					}
				}
				goto IL_0313;
				IL_0313:
				num6++;
			}
			array[num7, num6] = control4;
			for (int k = 0; k < num8; k++)
			{
				for (int l = 0; l < num9; l++)
				{
					if (k != 0 || l != 0)
					{
						array[num7 + k, num6 + l] = dummy_control;
					}
				}
			}
		}
		return array;
	}

	private void CalculateColumnRowSizes(TableLayoutPanel panel, int columns, int rows)
	{
		TableLayoutSettings layoutSettings = panel.LayoutSettings;
		panel.column_widths = new int[panel.actual_positions.GetLength(0)];
		panel.row_heights = new int[panel.actual_positions.GetLength(1)];
		int cellBorderWidth = TableLayoutPanel.GetCellBorderWidth(panel.CellBorderStyle);
		Rectangle displayRectangle = panel.DisplayRectangle;
		TableLayoutColumnStyleCollection tableLayoutColumnStyleCollection = new TableLayoutColumnStyleCollection(panel);
		foreach (ColumnStyle item in (IEnumerable)layoutSettings.ColumnStyles)
		{
			tableLayoutColumnStyleCollection.Add(new ColumnStyle(item.SizeType, item.Width));
		}
		TableLayoutRowStyleCollection tableLayoutRowStyleCollection = new TableLayoutRowStyleCollection(panel);
		foreach (RowStyle item2 in (IEnumerable)layoutSettings.RowStyles)
		{
			tableLayoutRowStyleCollection.Add(new RowStyle(item2.SizeType, item2.Height));
		}
		if (columns > tableLayoutColumnStyleCollection.Count)
		{
			for (int i = tableLayoutColumnStyleCollection.Count; i < columns; i++)
			{
				tableLayoutColumnStyleCollection.Add(new ColumnStyle());
			}
		}
		if (rows > tableLayoutRowStyleCollection.Count)
		{
			for (int j = tableLayoutRowStyleCollection.Count; j < rows; j++)
			{
				tableLayoutRowStyleCollection.Add(new RowStyle());
			}
		}
		while (tableLayoutRowStyleCollection.Count > rows)
		{
			tableLayoutRowStyleCollection.RemoveAt(tableLayoutRowStyleCollection.Count - 1);
		}
		while (tableLayoutColumnStyleCollection.Count > columns)
		{
			tableLayoutColumnStyleCollection.RemoveAt(tableLayoutColumnStyleCollection.Count - 1);
		}
		int num = 0;
		int num2 = 0;
		foreach (Control control4 in panel.Controls)
		{
			num = Math.Max(num, layoutSettings.GetColumnSpan(control4));
			num2 = Math.Max(num2, layoutSettings.GetRowSpan(control4));
		}
		int num3 = displayRectangle.Width - cellBorderWidth * (columns + 1);
		int num4 = 0;
		foreach (ColumnStyle item3 in (IEnumerable)tableLayoutColumnStyleCollection)
		{
			if (item3.SizeType == SizeType.Absolute)
			{
				panel.column_widths[num4] = (int)item3.Width;
				num3 -= (int)item3.Width;
			}
			num4++;
		}
		for (int k = 0; k < num; k++)
		{
			for (num4 = k; num4 < tableLayoutColumnStyleCollection.Count - k; num4++)
			{
				ColumnStyle columnStyle3 = tableLayoutColumnStyleCollection[num4];
				if (columnStyle3.SizeType != SizeType.AutoSize && (!panel.AutoSize || columnStyle3.SizeType != SizeType.Percent))
				{
					continue;
				}
				int num5 = panel.column_widths[num4];
				for (int l = 0; l < rows; l++)
				{
					Control control2 = panel.actual_positions[num4 - k, l];
					if (control2 != null && control2 != dummy_control && control2.VisibleInternal && layoutSettings.GetColumnSpan(control2) == k + 1)
					{
						num5 = ((!control2.AutoSize) ? Math.Max(num5, control2.ExplicitBounds.Width + control2.Margin.Horizontal) : Math.Max(num5, control2.PreferredSize.Width + control2.Margin.Horizontal));
						num5 = Math.Max(num5, control2.Width + control2.Margin.Left + control2.Margin.Right);
					}
				}
				for (int m = Math.Max(num4 - k, 0); m < num4; m++)
				{
					num5 -= panel.column_widths[m];
				}
				if (num5 > panel.column_widths[num4])
				{
					num5 -= panel.column_widths[num4];
					panel.column_widths[num4] += num5;
					num3 -= num5;
				}
			}
		}
		num4 = 0;
		float num6 = 0f;
		if (num3 > 0)
		{
			int num7 = num3;
			foreach (ColumnStyle item4 in (IEnumerable)tableLayoutColumnStyleCollection)
			{
				if (item4.SizeType == SizeType.Percent)
				{
					num6 += item4.Width;
				}
			}
			foreach (ColumnStyle item5 in (IEnumerable)tableLayoutColumnStyleCollection)
			{
				if (item5.SizeType == SizeType.Percent)
				{
					int num8 = (int)(item5.Width / num6 * (float)num7 - (float)panel.column_widths[num4]);
					if (num8 > 0)
					{
						panel.column_widths[num4] += num8;
						num3 -= num8;
					}
				}
				num4++;
			}
		}
		if (num3 > 0)
		{
			int num9 = tableLayoutColumnStyleCollection.Count - 1;
			while (num9 >= 0 && tableLayoutColumnStyleCollection[num9].SizeType == SizeType.Absolute)
			{
				num9--;
			}
			if (num9 < 0)
			{
				num9 = tableLayoutColumnStyleCollection.Count - 1;
			}
			panel.column_widths[num9] += num3;
		}
		int num10 = displayRectangle.Height - cellBorderWidth * (rows + 1);
		num4 = 0;
		foreach (RowStyle item6 in (IEnumerable)tableLayoutRowStyleCollection)
		{
			if (item6.SizeType == SizeType.Absolute)
			{
				panel.row_heights[num4] = (int)item6.Height;
				num10 -= (int)item6.Height;
			}
			num4++;
		}
		num4 = 0;
		for (int n = 0; n < num2; n++)
		{
			for (num4 = n; num4 < tableLayoutRowStyleCollection.Count - n; num4++)
			{
				RowStyle rowStyle3 = tableLayoutRowStyleCollection[num4];
				if (rowStyle3.SizeType != SizeType.AutoSize && (!panel.AutoSize || rowStyle3.SizeType != SizeType.Percent))
				{
					continue;
				}
				int num11 = panel.row_heights[num4];
				for (int num12 = 0; num12 < columns; num12++)
				{
					Control control3 = panel.actual_positions[num12, num4 - n];
					if (control3 != null && control3 != dummy_control && control3.VisibleInternal && layoutSettings.GetRowSpan(control3) == n + 1)
					{
						num11 = ((!control3.AutoSize) ? Math.Max(num11, control3.ExplicitBounds.Height + control3.Margin.Vertical) : Math.Max(num11, control3.PreferredSize.Height + control3.Margin.Vertical));
						num11 = Math.Max(num11, control3.Height + control3.Margin.Top + control3.Margin.Bottom);
					}
				}
				for (int num13 = Math.Max(num4 - n, 0); num13 < num4; num13++)
				{
					num11 -= panel.row_heights[num13];
				}
				if (num11 > panel.row_heights[num4])
				{
					num11 -= panel.row_heights[num4];
					panel.row_heights[num4] += num11;
					num10 -= num11;
				}
			}
		}
		num4 = 0;
		num6 = 0f;
		if (num10 > 0)
		{
			int num14 = num10;
			foreach (RowStyle item7 in (IEnumerable)tableLayoutRowStyleCollection)
			{
				if (item7.SizeType == SizeType.Percent)
				{
					num6 += item7.Height;
				}
			}
			foreach (RowStyle item8 in (IEnumerable)tableLayoutRowStyleCollection)
			{
				if (item8.SizeType == SizeType.Percent)
				{
					int num15 = (int)(item8.Height / num6 * (float)num14 - (float)panel.row_heights[num4]);
					if (num15 > 0)
					{
						panel.row_heights[num4] += num15;
						num10 -= num15;
					}
				}
				num4++;
			}
		}
		if (num10 > 0)
		{
			int num16 = tableLayoutRowStyleCollection.Count - 1;
			while (num16 >= 0 && tableLayoutRowStyleCollection[num16].SizeType == SizeType.Absolute)
			{
				num16--;
			}
			if (num16 < 0)
			{
				num16 = tableLayoutRowStyleCollection.Count - 1;
			}
			panel.row_heights[num16] += num10;
		}
	}

	private void LayoutControls(TableLayoutPanel panel)
	{
		TableLayoutSettings layoutSettings = panel.LayoutSettings;
		int cellBorderWidth = TableLayoutPanel.GetCellBorderWidth(panel.CellBorderStyle);
		int length = panel.actual_positions.GetLength(0);
		int length2 = panel.actual_positions.GetLength(1);
		Point point = new Point(panel.DisplayRectangle.Left + cellBorderWidth, panel.DisplayRectangle.Top + cellBorderWidth);
		for (int i = 0; i < length2; i++)
		{
			for (int j = 0; j < length; j++)
			{
				Control control = panel.actual_positions[j, i];
				if (control != null && control != dummy_control)
				{
					Size size = ((!control.AutoSize) ? control.ExplicitBounds.Size : control.PreferredSize);
					int num = 0;
					int num2 = 0;
					int num3 = 0;
					int num4 = 0;
					int num5 = panel.column_widths[j];
					for (int k = 1; k < Math.Min(layoutSettings.GetColumnSpan(control), panel.column_widths.Length); k++)
					{
						num5 += panel.column_widths[j + k];
					}
					num3 = ((control.Dock != DockStyle.Fill && control.Dock != DockStyle.Top && control.Dock != DockStyle.Bottom && ((control.Anchor & AnchorStyles.Left) != AnchorStyles.Left || (control.Anchor & AnchorStyles.Right) != AnchorStyles.Right)) ? Math.Min(size.Width, num5 - control.Margin.Left - control.Margin.Right) : (num5 - control.Margin.Left - control.Margin.Right));
					int num6 = panel.row_heights[i];
					for (int l = 1; l < Math.Min(layoutSettings.GetRowSpan(control), panel.row_heights.Length); l++)
					{
						num6 += panel.row_heights[i + l];
					}
					num4 = ((control.Dock != DockStyle.Fill && control.Dock != DockStyle.Left && control.Dock != DockStyle.Right && ((control.Anchor & AnchorStyles.Top) != AnchorStyles.Top || (control.Anchor & AnchorStyles.Bottom) != AnchorStyles.Bottom)) ? Math.Min(size.Height, num6 - control.Margin.Top - control.Margin.Bottom) : (num6 - control.Margin.Top - control.Margin.Bottom));
					if (control.Dock != DockStyle.Left && control.Dock != DockStyle.Fill && (control.Anchor & AnchorStyles.Left) != AnchorStyles.Left)
					{
						num = ((control.Dock != DockStyle.Right && (control.Anchor & AnchorStyles.Right) != AnchorStyles.Right) ? (point.X + (num5 - control.Margin.Left - control.Margin.Right) / 2 + control.Margin.Left - num3 / 2) : (point.X + num5 - num3 - control.Margin.Right));
					}
					else
					{
						num = point.X + control.Margin.Left;
					}
					if (control.Dock != DockStyle.Top && control.Dock != DockStyle.Fill && (control.Anchor & AnchorStyles.Top) != AnchorStyles.Top)
					{
						num2 = ((control.Dock != DockStyle.Bottom && (control.Anchor & AnchorStyles.Bottom) != AnchorStyles.Bottom) ? (point.Y + (num6 - control.Margin.Top - control.Margin.Bottom) / 2 + control.Margin.Top - num4 / 2) : (point.Y + num6 - num4 - control.Margin.Bottom));
					}
					else
					{
						num2 = point.Y + control.Margin.Top;
					}
					control.SetBoundsInternal(num, num2, num3, num4, BoundsSpecified.None);
				}
				point.Offset(panel.column_widths[j] + cellBorderWidth, 0);
			}
			point.Offset(-1 * point.X + cellBorderWidth + panel.DisplayRectangle.Left, panel.row_heights[i] + cellBorderWidth);
		}
	}
}
