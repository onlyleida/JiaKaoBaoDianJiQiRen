using System.Drawing;

namespace System.Windows.Forms.Design.Behavior;

public abstract class Glyph
{
	private Behavior behavior;

	[System.MonoTODO]
	public virtual Behavior Behavior => behavior;

	[System.MonoTODO]
	public virtual Rectangle Bounds
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected Glyph(Behavior behavior)
	{
		SetBehavior(behavior);
	}

	public abstract Cursor GetHitTest(Point p);

	public abstract void Paint(PaintEventArgs pe);

	[System.MonoTODO]
	protected void SetBehavior(Behavior behavior)
	{
		throw new NotImplementedException();
	}
}
