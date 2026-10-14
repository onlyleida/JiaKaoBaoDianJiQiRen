using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms.Design;
using Unity;

namespace System.Windows.Forms;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class ToolStripOverflowButton : ToolStripDropDownButton
{
	private class ToolStripOverflowButtonAccessibleObject : AccessibleObject
	{
	}

	public override bool HasDropDownItems
	{
		get
		{
			if (drop_down == null)
			{
				return false;
			}
			return DropDown.DisplayedItems.Count > 0;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new bool RightToLeftAutoMirrorImage
	{
		get
		{
			return base.RightToLeftAutoMirrorImage;
		}
		set
		{
			base.RightToLeftAutoMirrorImage = value;
		}
	}

	protected internal override Padding DefaultMargin => new Padding(0, 1, 0, 2);

	internal ToolStripOverflowButton(ToolStrip ts)
	{
		InternalOwner = ts;
		Parent = ts;
		Visible = false;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		return new Size(16, Parent.Height);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new ToolStripOverflowButtonAccessibleObject();
	}

	protected override ToolStripDropDown CreateDefaultDropDown()
	{
		return new ToolStripOverflow(this)
		{
			DefaultDropDownDirection = ToolStripDropDownDirection.BelowLeft,
			OwnerItem = this
		};
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (Owner != null)
		{
			Owner.Renderer.DrawOverflowButtonBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
		}
	}

	protected internal override void SetBounds(Rectangle bounds)
	{
		base.SetBounds(bounds);
	}

	internal ToolStripOverflowButton()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
