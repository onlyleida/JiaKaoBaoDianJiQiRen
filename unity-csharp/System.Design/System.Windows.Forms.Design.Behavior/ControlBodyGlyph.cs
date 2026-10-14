using System.ComponentModel;
using System.Drawing;

namespace System.Windows.Forms.Design.Behavior;

public class ControlBodyGlyph : ComponentGlyph
{
	private Rectangle bounds;

	[System.MonoTODO]
	public override Rectangle Bounds => bounds;

	[System.MonoTODO]
	public ControlBodyGlyph(Rectangle bounds, Cursor cursor, IComponent relatedComponent, Behavior behavior)
		: base(relatedComponent, behavior)
	{
		this.bounds = bounds;
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public ControlBodyGlyph(Rectangle bounds, Cursor cursor, IComponent relatedComponent, ControlDesigner designer)
		: this(bounds, cursor, relatedComponent, designer.BehaviorService.CurrentBehavior)
	{
	}

	[System.MonoTODO]
	public override Cursor GetHitTest(Point p)
	{
		throw new NotImplementedException();
	}
}
