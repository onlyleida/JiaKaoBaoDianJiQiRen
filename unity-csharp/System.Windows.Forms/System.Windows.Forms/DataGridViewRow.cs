using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;

namespace System.Windows.Forms;

[TypeConverter(typeof(DataGridViewRowConverter))]
public class DataGridViewRow : DataGridViewBand
{
	[ComVisible(true)]
	protected class DataGridViewRowAccessibleObject : AccessibleObject
	{
		private DataGridViewRow dataGridViewRow;

		public override Rectangle Bounds
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		public override string Name => "Index: " + dataGridViewRow.Index;

		public DataGridViewRow Owner
		{
			get
			{
				return dataGridViewRow;
			}
			set
			{
				dataGridViewRow = value;
			}
		}

		public override AccessibleObject Parent => dataGridViewRow.AccessibilityObject;

		public override AccessibleRole Role => AccessibleRole.Row;

		public override AccessibleStates State
		{
			get
			{
				if (dataGridViewRow.Selected)
				{
					return AccessibleStates.Selected;
				}
				return AccessibleStates.Focused;
			}
		}

		public override string Value
		{
			get
			{
				if (dataGridViewRow.Cells.Count == 0)
				{
					return "(Create New)";
				}
				string text = "";
				foreach (DataGridViewCell cell in dataGridViewRow.Cells)
				{
					text += cell.AccessibilityObject.Value;
				}
				return text;
			}
		}

		public DataGridViewRowAccessibleObject()
		{
		}

		public DataGridViewRowAccessibleObject(DataGridViewRow owner)
		{
			dataGridViewRow = owner;
		}

		public override AccessibleObject GetChild(int index)
		{
			throw new NotImplementedException();
		}

		public override int GetChildCount()
		{
			throw new NotImplementedException();
		}

		public override AccessibleObject GetFocused()
		{
			return null;
		}

		public override AccessibleObject GetSelected()
		{
			return null;
		}

		public override AccessibleObject Navigate(AccessibleNavigation navigationDirection)
		{
			switch (navigationDirection)
			{
			default:
				return null;
			case AccessibleNavigation.Up:
			case AccessibleNavigation.Down:
			case AccessibleNavigation.Left:
			case AccessibleNavigation.Right:
			case AccessibleNavigation.Next:
			case AccessibleNavigation.Previous:
				return null;
			}
		}

		public override void Select(AccessibleSelection flags)
		{
			if (flags <= AccessibleSelection.TakeSelection)
			{
				if (flags != AccessibleSelection.TakeFocus)
				{
					_ = 2;
				}
				else
				{
					dataGridViewRow.DataGridView.Focus();
				}
				return;
			}
			switch (flags)
			{
			case AccessibleSelection.AddSelection:
				dataGridViewRow.DataGridView.SelectedRows.InternalAdd(dataGridViewRow);
				break;
			case AccessibleSelection.RemoveSelection:
				dataGridViewRow.DataGridView.SelectedRows.InternalRemove(dataGridViewRow);
				break;
			}
		}
	}

	private AccessibleObject accessibilityObject;

	private DataGridViewCellCollection cells;

	private ContextMenuStrip contextMenuStrip;

	private int dividerHeight;

	private string errorText;

	private DataGridViewRowHeaderCell headerCell;

	private int height;

	private int minimumHeight;

	private int explicit_height;

	[Browsable(false)]
	public AccessibleObject AccessibilityObject => accessibilityObject;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	public DataGridViewCellCollection Cells
	{
		get
		{
			if (cells == null)
			{
				cells = CreateCellsInstance();
			}
			return cells;
		}
	}

	[DefaultValue(null)]
	public override ContextMenuStrip ContextMenuStrip
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Operation cannot be performed on a shared row.");
			}
			return contextMenuStrip;
		}
		set
		{
			if (contextMenuStrip != value)
			{
				contextMenuStrip = value;
				if (DataGridView != null)
				{
					DataGridView.OnRowContextMenuStripChanged(new DataGridViewRowEventArgs(this));
				}
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public object DataBoundItem
	{
		get
		{
			if (DataGridView != null && DataGridView.DataManager != null && DataGridView.DataManager.Count > Index)
			{
				return DataGridView.DataManager[Index];
			}
			return null;
		}
	}

	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	public override DataGridViewCellStyle DefaultCellStyle
	{
		get
		{
			return base.DefaultCellStyle;
		}
		set
		{
			if (DefaultCellStyle != value)
			{
				base.DefaultCellStyle = value;
				if (DataGridView != null)
				{
					DataGridView.OnRowDefaultCellStyleChanged(new DataGridViewRowEventArgs(this));
				}
			}
		}
	}

	[Browsable(false)]
	public override bool Displayed
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the Displayed property of a shared row is not a valid operation.");
			}
			return base.Displayed;
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(0)]
	public int DividerHeight
	{
		get
		{
			return dividerHeight;
		}
		set
		{
			dividerHeight = value;
		}
	}

	[DefaultValue("")]
	[NotifyParentProperty(true)]
	public string ErrorText
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Operation cannot be performed on a shared row.");
			}
			if (errorText != null)
			{
				return errorText;
			}
			return string.Empty;
		}
		set
		{
			if (errorText != value)
			{
				errorText = value;
				if (DataGridView != null)
				{
					DataGridView.OnRowErrorTextChanged(new DataGridViewRowEventArgs(this));
				}
			}
		}
	}

	[Browsable(false)]
	public override bool Frozen
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the Frozen property of a shared row is not a valid operation.");
			}
			return base.Frozen;
		}
		set
		{
			base.Frozen = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public DataGridViewRowHeaderCell HeaderCell
	{
		get
		{
			return headerCell;
		}
		set
		{
			if (headerCell != value)
			{
				headerCell = value;
				headerCell.SetOwningRow(this);
				if (DataGridView != null)
				{
					headerCell.SetDataGridView(DataGridView);
					DataGridView.OnRowHeaderCellChanged(new DataGridViewRowEventArgs(this));
				}
			}
		}
	}

	[DefaultValue(22)]
	[NotifyParentProperty(true)]
	public int Height
	{
		get
		{
			if (height < 0)
			{
				if (DefaultCellStyle != null && DefaultCellStyle.Font != null)
				{
					return DefaultCellStyle.Font.Height + 9;
				}
				if (Index >= 0 && InheritedStyle != null && InheritedStyle.Font != null)
				{
					return InheritedStyle.Font.Height + 9;
				}
				return Control.DefaultFont.Height + 9;
			}
			return height;
		}
		set
		{
			explicit_height = value;
			if (height != value)
			{
				if (value < minimumHeight)
				{
					height = minimumHeight;
				}
				else
				{
					height = value;
				}
				if (DataGridView != null)
				{
					DataGridView.Invalidate();
					DataGridView.OnRowHeightChanged(new DataGridViewRowEventArgs(this));
				}
			}
		}
	}

	public override DataGridViewCellStyle InheritedStyle
	{
		get
		{
			if (Index == -1)
			{
				throw new InvalidOperationException("Getting the InheritedStyle property of a shared row is not a valid operation.");
			}
			if (DataGridView == null)
			{
				return DefaultCellStyle;
			}
			if (DefaultCellStyle == null)
			{
				return DataGridView.DefaultCellStyle;
			}
			return DefaultCellStyle.Clone();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsNewRow
	{
		get
		{
			if (DataGridView != null && DataGridView.Rows[DataGridView.Rows.Count - 1] == this && DataGridView.NewRowIndex == Index)
			{
				return true;
			}
			return false;
		}
	}

	internal bool IsShared
	{
		get
		{
			if (Index == -1)
			{
				return DataGridView != null;
			}
			return false;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int MinimumHeight
	{
		get
		{
			return minimumHeight;
		}
		set
		{
			if (minimumHeight != value)
			{
				if (value < 2 || value > int.MaxValue)
				{
					throw new ArgumentOutOfRangeException("MinimumHeight should be between 2 and Int32.MaxValue.");
				}
				if (height < value)
				{
					Height = value;
				}
				minimumHeight = value;
				if (DataGridView != null)
				{
					DataGridView.OnRowMinimumHeightChanged(new DataGridViewRowEventArgs(this));
				}
			}
		}
	}

	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	public override bool ReadOnly
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the ReadOnly property of a shared row is not a valid operation.");
			}
			if (DataGridView != null && DataGridView.ReadOnly)
			{
				return true;
			}
			return base.ReadOnly;
		}
		set
		{
			base.ReadOnly = value;
		}
	}

	[NotifyParentProperty(true)]
	public override DataGridViewTriState Resizable
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the Resizable property of a shared row is not a valid operation.");
			}
			return base.Resizable;
		}
		set
		{
			base.Resizable = value;
		}
	}

	public override bool Selected
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the Selected property of a shared row is not a valid operation.");
			}
			return base.Selected;
		}
		set
		{
			if (Index == -1)
			{
				throw new InvalidOperationException("The row is a shared row.");
			}
			if (DataGridView == null)
			{
				throw new InvalidOperationException("The row has not been added to a DataGridView control.");
			}
			base.Selected = value;
		}
	}

	public override DataGridViewElementStates State
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the State property of a shared row is not a valid operation.");
			}
			return base.State;
		}
	}

	[Browsable(false)]
	public override bool Visible
	{
		get
		{
			if (IsShared)
			{
				throw new InvalidOperationException("Getting the Visible property of a shared row is not a valid operation.");
			}
			return base.Visible;
		}
		set
		{
			if (IsNewRow && !value)
			{
				throw new InvalidOperationException("Cant make invisible a new row.");
			}
			if (!value && DataGridView != null && DataGridView.DataManager != null && DataGridView.DataManager.Position == Index)
			{
				throw new InvalidOperationException("Row associated with the currency manager's position cannot be made invisible.");
			}
			base.Visible = value;
			if (DataGridView != null)
			{
				DataGridView.Invalidate();
			}
		}
	}

	public DataGridViewRow()
	{
		minimumHeight = 3;
		height = -1;
		explicit_height = -1;
		headerCell = new DataGridViewRowHeaderCell();
		headerCell.SetOwningRow(this);
		accessibilityObject = new AccessibleObject();
		SetState(DataGridViewElementStates.Visible);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual DataGridViewAdvancedBorderStyle AdjustRowHeaderBorderStyle(DataGridViewAdvancedBorderStyle dataGridViewAdvancedBorderStyleInput, DataGridViewAdvancedBorderStyle dataGridViewAdvancedBorderStylePlaceholder, bool singleVerticalBorderAdded, bool singleHorizontalBorderAdded, bool isFirstDisplayedRow, bool isLastVisibleRow)
	{
		throw new NotImplementedException();
	}

	public override object Clone()
	{
		DataGridViewRow dataGridViewRow = (DataGridViewRow)MemberwiseClone();
		dataGridViewRow.HeaderCell = (DataGridViewRowHeaderCell)HeaderCell.Clone();
		dataGridViewRow.SetIndex(-1);
		dataGridViewRow.cells = null;
		foreach (DataGridViewCell cell in Cells)
		{
			dataGridViewRow.Cells.Add(cell.Clone() as DataGridViewCell);
		}
		dataGridViewRow.SetDataGridView(null);
		return dataGridViewRow;
	}

	public void CreateCells(DataGridView dataGridView)
	{
		if (dataGridView == null)
		{
			throw new ArgumentNullException("DataGridView is null.");
		}
		if (dataGridView.Rows.Contains(this))
		{
			throw new InvalidOperationException("The row already exists in the DataGridView.");
		}
		Cells.Clear();
		foreach (DataGridViewColumn column in dataGridView.Columns)
		{
			if (column.CellTemplate == null)
			{
				throw new InvalidOperationException("Cell template not set in column: " + column.Index + ".");
			}
			Cells.Add((DataGridViewCell)column.CellTemplate.Clone());
		}
	}

	public void CreateCells(DataGridView dataGridView, params object[] values)
	{
		if (values == null)
		{
			throw new ArgumentNullException("values is null");
		}
		CreateCells(dataGridView);
		for (int i = 0; i < values.Length; i++)
		{
			Cells[i].Value = values[i];
		}
	}

	public ContextMenuStrip GetContextMenuStrip(int rowIndex)
	{
		if (rowIndex == -1)
		{
			throw new InvalidOperationException("rowIndex is -1");
		}
		if (rowIndex < 0 || rowIndex >= DataGridView.Rows.Count)
		{
			throw new ArgumentOutOfRangeException("rowIndex is out of range");
		}
		return null;
	}

	public string GetErrorText(int rowIndex)
	{
		return string.Empty;
	}

	public virtual int GetPreferredHeight(int rowIndex, DataGridViewAutoSizeRowMode autoSizeRowMode, bool fixedWidth)
	{
		DataGridViewRow dataGridViewRow = ((DataGridView == null) ? this : DataGridView.Rows.SharedRow(rowIndex));
		int num = 0;
		if (autoSizeRowMode == DataGridViewAutoSizeRowMode.AllCells || autoSizeRowMode == DataGridViewAutoSizeRowMode.RowHeader)
		{
			num = Math.Max(num, dataGridViewRow.HeaderCell.PreferredSize.Height);
		}
		if (autoSizeRowMode == DataGridViewAutoSizeRowMode.AllCells || autoSizeRowMode == DataGridViewAutoSizeRowMode.AllCellsExceptHeader)
		{
			foreach (DataGridViewCell cell in dataGridViewRow.Cells)
			{
				num = Math.Max(num, cell.PreferredSize.Height);
			}
		}
		return num;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual DataGridViewElementStates GetState(int rowIndex)
	{
		DataGridViewElementStates dataGridViewElementStates = DataGridViewElementStates.None;
		if (rowIndex == -1)
		{
			dataGridViewElementStates |= DataGridViewElementStates.Displayed;
			if (DataGridView.ReadOnly)
			{
				dataGridViewElementStates |= DataGridViewElementStates.ReadOnly;
			}
			if (DataGridView.AllowUserToResizeRows)
			{
				dataGridViewElementStates |= DataGridViewElementStates.Resizable;
			}
			if (DataGridView.Visible)
			{
				dataGridViewElementStates |= DataGridViewElementStates.Visible;
			}
			return dataGridViewElementStates;
		}
		DataGridViewRow dataGridViewRow = DataGridView.Rows[rowIndex];
		if (dataGridViewRow.Displayed)
		{
			dataGridViewElementStates |= DataGridViewElementStates.Displayed;
		}
		if (dataGridViewRow.Frozen)
		{
			dataGridViewElementStates |= DataGridViewElementStates.Frozen;
		}
		if (dataGridViewRow.ReadOnly)
		{
			dataGridViewElementStates |= DataGridViewElementStates.ReadOnly;
		}
		if (dataGridViewRow.Resizable == DataGridViewTriState.True || (dataGridViewRow.Resizable == DataGridViewTriState.NotSet && DataGridView.AllowUserToResizeRows))
		{
			dataGridViewElementStates |= DataGridViewElementStates.Resizable;
		}
		if (dataGridViewRow.Resizable == DataGridViewTriState.True)
		{
			dataGridViewElementStates |= DataGridViewElementStates.ResizableSet;
		}
		if (dataGridViewRow.Selected)
		{
			dataGridViewElementStates |= DataGridViewElementStates.Selected;
		}
		if (dataGridViewRow.Visible)
		{
			dataGridViewElementStates |= DataGridViewElementStates.Visible;
		}
		return dataGridViewElementStates;
	}

	public bool SetValues(params object[] values)
	{
		if (values == null)
		{
			throw new ArgumentNullException("vues is null");
		}
		if (DataGridView != null && DataGridView.VirtualMode)
		{
			throw new InvalidOperationException("DataGridView is operating in virtual mode");
		}
		for (int i = 0; i < values.Length; i++)
		{
			DataGridViewCell dataGridViewCell;
			if (Cells.Count > i)
			{
				dataGridViewCell = Cells[i];
			}
			else
			{
				dataGridViewCell = new DataGridViewTextBoxCell();
				Cells.Add(dataGridViewCell);
			}
			dataGridViewCell.Value = values[i];
		}
		return true;
	}

	public override string ToString()
	{
		return GetType().Name + ", Band Index: " + Index;
	}

	protected virtual AccessibleObject CreateAccessibilityInstance()
	{
		return new DataGridViewRowAccessibleObject(this);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual DataGridViewCellCollection CreateCellsInstance()
	{
		return new DataGridViewCellCollection(this);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal virtual void DrawFocus(Graphics graphics, Rectangle clipBounds, Rectangle bounds, int rowIndex, DataGridViewElementStates rowState, DataGridViewCellStyle cellStyle, bool cellsPaintSelectionBackground)
	{
	}

	protected internal virtual void Paint(Graphics graphics, Rectangle clipBounds, Rectangle rowBounds, int rowIndex, DataGridViewElementStates rowState, bool isFirstDisplayedRow, bool isLastVisibleRow)
	{
		DataGridViewCellStyle inheritedRowStyle = ((Index != -1) ? InheritedStyle : DataGridView.RowsDefaultCellStyle);
		DataGridViewRowPrePaintEventArgs e = new DataGridViewRowPrePaintEventArgs(DataGridView, graphics, clipBounds, rowBounds, rowIndex, rowState, string.Empty, inheritedRowStyle, isFirstDisplayedRow, isLastVisibleRow);
		e.PaintParts = DataGridViewPaintParts.All;
		DataGridView.OnRowPrePaint(e);
		if (!e.Handled)
		{
			if (DataGridView.RowHeadersVisible)
			{
				PaintHeader(graphics, e.ClipBounds, rowBounds, rowIndex, rowState, isFirstDisplayedRow, isLastVisibleRow, e.PaintParts);
			}
			PaintCells(graphics, e.ClipBounds, rowBounds, rowIndex, rowState, isFirstDisplayedRow, isLastVisibleRow, e.PaintParts);
			DataGridViewRowPostPaintEventArgs e2 = new DataGridViewRowPostPaintEventArgs(DataGridView, graphics, e.ClipBounds, rowBounds, rowIndex, rowState, e.ErrorText, inheritedRowStyle, isFirstDisplayedRow, isLastVisibleRow);
			DataGridView.OnRowPostPaint(e2);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal virtual void PaintCells(Graphics graphics, Rectangle clipBounds, Rectangle rowBounds, int rowIndex, DataGridViewElementStates rowState, bool isFirstDisplayedRow, bool isLastVisibleRow, DataGridViewPaintParts paintParts)
	{
		List<DataGridViewColumn> columnDisplayIndexSortedArrayList = DataGridView.Columns.ColumnDisplayIndexSortedArrayList;
		Rectangle rectangle = rowBounds;
		if (DataGridView.RowHeadersVisible)
		{
			rectangle.X += DataGridView.RowHeadersWidth;
			rectangle.Width -= DataGridView.RowHeadersWidth;
		}
		bool singleVerticalBorderAdded = !DataGridView.RowHeadersVisible;
		bool singleHorizontalBorderAdded = !DataGridView.ColumnHeadersVisible;
		for (int i = DataGridView.first_col_index; i < columnDisplayIndexSortedArrayList.Count; i++)
		{
			DataGridViewColumn dataGridViewColumn = columnDisplayIndexSortedArrayList[i];
			if (dataGridViewColumn.Visible)
			{
				if (!dataGridViewColumn.Displayed)
				{
					break;
				}
				rectangle.Width = dataGridViewColumn.Width;
				DataGridViewCell dataGridViewCell = Cells[dataGridViewColumn.Index];
				if ((paintParts & DataGridViewPaintParts.Background) == DataGridViewPaintParts.Background)
				{
					graphics.FillRectangle(Brushes.White, rectangle);
				}
				DataGridViewCellStyle cellStyle = ((dataGridViewCell.RowIndex != -1) ? dataGridViewCell.InheritedStyle : DefaultCellStyle);
				object value;
				DataGridViewElementStates inheritedState;
				if (dataGridViewCell.RowIndex == -1)
				{
					value = null;
					inheritedState = dataGridViewCell.State;
				}
				else
				{
					value = dataGridViewCell.Value;
					inheritedState = dataGridViewCell.InheritedState;
				}
				DataGridViewAdvancedBorderStyle dataGridViewAdvancedBorderStylePlaceholder = (DataGridViewAdvancedBorderStyle)((ICloneable)DataGridView.AdvancedCellBorderStyle).Clone();
				DataGridViewAdvancedBorderStyle advancedBorderStyle = dataGridViewCell.AdjustCellBorderStyle(DataGridView.AdvancedCellBorderStyle, dataGridViewAdvancedBorderStylePlaceholder, singleVerticalBorderAdded, singleHorizontalBorderAdded, dataGridViewCell.ColumnIndex == 0, dataGridViewCell.RowIndex == 0);
				DataGridView.OnCellFormattingInternal(new DataGridViewCellFormattingEventArgs(dataGridViewCell.ColumnIndex, dataGridViewCell.RowIndex, value, dataGridViewCell.FormattedValueType, cellStyle));
				dataGridViewCell.PaintWork(graphics, clipBounds, rectangle, rowIndex, inheritedState, cellStyle, advancedBorderStyle, paintParts);
				rectangle.X += rectangle.Width;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal virtual void PaintHeader(Graphics graphics, Rectangle clipBounds, Rectangle rowBounds, int rowIndex, DataGridViewElementStates rowState, bool isFirstDisplayedRow, bool isLastVisibleRow, DataGridViewPaintParts paintParts)
	{
		rowBounds.Width = DataGridView.RowHeadersWidth;
		graphics.FillRectangle(Brushes.White, rowBounds);
		HeaderCell.PaintWork(graphics, clipBounds, rowBounds, rowIndex, rowState, HeaderCell.InheritedStyle, DataGridView.AdvancedRowHeadersBorderStyle, paintParts);
	}

	internal override void SetDataGridView(DataGridView dataGridView)
	{
		base.SetDataGridView(dataGridView);
		headerCell.SetDataGridView(dataGridView);
		foreach (DataGridViewCell cell in Cells)
		{
			cell.SetDataGridView(dataGridView);
		}
	}

	internal override void SetState(DataGridViewElementStates state)
	{
		if (State != state)
		{
			base.SetState(state);
			if (DataGridView != null)
			{
				DataGridView.OnRowStateChanged(Index, new DataGridViewRowStateChangedEventArgs(this, state));
			}
		}
	}

	internal void SetAutoSizeHeight(int height)
	{
		this.height = height;
		if (DataGridView != null)
		{
			DataGridView.Invalidate();
			DataGridView.OnRowHeightChanged(new DataGridViewRowEventArgs(this));
		}
	}

	internal void ResetToExplicitHeight()
	{
		height = explicit_height;
		if (DataGridView != null)
		{
			DataGridView.OnRowHeightChanged(new DataGridViewRowEventArgs(this));
		}
	}
}
