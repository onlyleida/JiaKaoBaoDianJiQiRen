using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace System.Windows.Forms;

[ToolboxBitmap("")]
public class DataGridViewLinkColumn : DataGridViewColumn
{
	private string text = string.Empty;

	public Color ActiveLinkColor
	{
		get
		{
			return ((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).ActiveLinkColor;
		}
		set
		{
			if (ActiveLinkColor == value)
			{
				return;
			}
			((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).ActiveLinkColor = value;
			foreach (DataGridViewRow item in (IEnumerable)DataGridView.Rows)
			{
				if (item.Cells[Index] is DataGridViewLinkCell dataGridViewLinkCell)
				{
					dataGridViewLinkCell.ActiveLinkColor = value;
				}
			}
			DataGridView.InvalidateColumn(Index);
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
			base.CellTemplate = value as DataGridViewLinkCell;
		}
	}

	[DefaultValue(LinkBehavior.SystemDefault)]
	public LinkBehavior LinkBehavior
	{
		get
		{
			return ((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).LinkBehavior;
		}
		set
		{
			if (LinkBehavior == value)
			{
				return;
			}
			((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).LinkBehavior = value;
			foreach (DataGridViewRow item in (IEnumerable)DataGridView.Rows)
			{
				if (item.Cells[Index] is DataGridViewLinkCell dataGridViewLinkCell)
				{
					dataGridViewLinkCell.LinkBehavior = value;
				}
			}
			DataGridView.InvalidateColumn(Index);
		}
	}

	public Color LinkColor
	{
		get
		{
			return ((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).LinkColor;
		}
		set
		{
			if (LinkColor == value)
			{
				return;
			}
			((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).LinkColor = value;
			foreach (DataGridViewRow item in (IEnumerable)DataGridView.Rows)
			{
				if (item.Cells[Index] is DataGridViewLinkCell dataGridViewLinkCell)
				{
					dataGridViewLinkCell.LinkColor = value;
				}
			}
			DataGridView.InvalidateColumn(Index);
		}
	}

	[MonoInternalNote("")]
	[DefaultValue(null)]
	public string Text
	{
		get
		{
			if (!(CellTemplate is DataGridViewLinkCell))
			{
				throw new InvalidOperationException("CellTemplate is null when getting this property.");
			}
			return text;
		}
		set
		{
			if (!(Text == value))
			{
				if (!(CellTemplate is DataGridViewLinkCell))
				{
					throw new InvalidOperationException("CellTemplate is null when getting this property.");
				}
				text = value;
				DataGridView.InvalidateColumn(Index);
			}
		}
	}

	[DefaultValue(true)]
	public bool TrackVisitedState
	{
		get
		{
			return ((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).TrackVisitedState;
		}
		set
		{
			if (TrackVisitedState == value)
			{
				return;
			}
			((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).TrackVisitedState = value;
			foreach (DataGridViewRow item in (IEnumerable)DataGridView.Rows)
			{
				if (item.Cells[Index] is DataGridViewLinkCell dataGridViewLinkCell)
				{
					dataGridViewLinkCell.TrackVisitedState = value;
				}
			}
			DataGridView.InvalidateColumn(Index);
		}
	}

	[DefaultValue(false)]
	public bool UseColumnTextForLinkValue
	{
		get
		{
			return ((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).UseColumnTextForLinkValue;
		}
		set
		{
			if (UseColumnTextForLinkValue == value)
			{
				return;
			}
			((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).UseColumnTextForLinkValue = value;
			foreach (DataGridViewRow item in (IEnumerable)DataGridView.Rows)
			{
				if (item.Cells[Index] is DataGridViewLinkCell dataGridViewLinkCell)
				{
					dataGridViewLinkCell.UseColumnTextForLinkValue = value;
				}
			}
			DataGridView.InvalidateColumn(Index);
		}
	}

	public Color VisitedLinkColor
	{
		get
		{
			return ((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).VisitedLinkColor;
		}
		set
		{
			if (VisitedLinkColor == value)
			{
				return;
			}
			((CellTemplate as DataGridViewLinkCell) ?? throw new InvalidOperationException("CellTemplate is null when getting this property.")).VisitedLinkColor = value;
			foreach (DataGridViewRow item in (IEnumerable)DataGridView.Rows)
			{
				if (item.Cells[Index] is DataGridViewLinkCell dataGridViewLinkCell)
				{
					dataGridViewLinkCell.VisitedLinkColor = value;
				}
			}
			DataGridView.InvalidateColumn(Index);
		}
	}

	public DataGridViewLinkColumn()
	{
		base.CellTemplate = new DataGridViewLinkCell();
	}

	public override object Clone()
	{
		DataGridViewLinkColumn dataGridViewLinkColumn = (DataGridViewLinkColumn)base.Clone();
		dataGridViewLinkColumn.CellTemplate = (DataGridViewCell)CellTemplate.Clone();
		return dataGridViewLinkColumn;
	}

	public override string ToString()
	{
		return base.ToString();
	}
}
