using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms.Layout;

namespace System.Windows.Forms;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.AutoDispatch)]
public class ToolStripOverflow : ToolStripDropDown, IComponent, IDisposable
{
	private class ToolStripOverflowAccessibleObject : AccessibleObject
	{
	}

	private LayoutEngine layout_engine;

	public override ToolStripItemCollection Items => base.Items;

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (layout_engine == null)
			{
				layout_engine = new FlowLayout();
			}
			return base.LayoutEngine;
		}
	}

	protected internal override ToolStripItemCollection DisplayedItems => base.DisplayedItems;

	internal ToolStrip ParentToolStrip => OwnerItem.Parent;

	public ToolStripOverflow(ToolStripItem parentItem)
	{
		OwnerItem = parentItem;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		return base.GetToolStripPreferredSize(constrainingSize);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new ToolStripOverflowAccessibleObject();
	}

	[MonoInternalNote("This should stack in rows of ~3, but for now 1 column will work.")]
	protected override void OnLayout(LayoutEventArgs e)
	{
		SetDisplayedItems();
		int num = 0;
		foreach (ToolStripItem displayedItem in DisplayedItems)
		{
			if (displayedItem.Available && displayedItem.GetPreferredSize(Size.Empty).Width > num)
			{
				num = displayedItem.GetPreferredSize(Size.Empty).Width;
			}
		}
		int left = Padding.Left;
		num += Padding.Horizontal;
		int num2 = Padding.Top;
		foreach (ToolStripItem displayedItem2 in DisplayedItems)
		{
			if (displayedItem2.Available)
			{
				num2 += displayedItem2.Margin.Top;
				int num3 = 0;
				num3 = ((!(displayedItem2 is ToolStripSeparator)) ? displayedItem2.GetPreferredSize(Size.Empty).Height : 7);
				displayedItem2.SetBounds(new Rectangle(left, num2, num, num3));
				num2 += displayedItem2.Height + displayedItem2.Margin.Bottom;
			}
		}
		Size = new Size(num + Padding.Horizontal, num2 + Padding.Bottom);
	}

	protected override void SetDisplayedItems()
	{
		displayed_items.ClearInternal();
		if (OwnerItem != null && OwnerItem.Parent != null)
		{
			foreach (ToolStripItem item in OwnerItem.Parent.Items)
			{
				if (item.Placement == ToolStripItemPlacement.Overflow && item.Available && !(item is ToolStripSeparator))
				{
					displayed_items.AddNoOwnerOrLayout(item);
				}
			}
		}
		PerformLayout();
	}
}
