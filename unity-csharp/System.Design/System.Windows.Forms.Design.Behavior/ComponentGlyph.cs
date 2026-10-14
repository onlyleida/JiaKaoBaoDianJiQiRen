using System.ComponentModel;
using System.Drawing;

namespace System.Windows.Forms.Design.Behavior;

public class ComponentGlyph : Glyph
{
	private IComponent component;

	[System.MonoTODO]
	public IComponent RelatedComponent => component;

	public ComponentGlyph(IComponent relatedComponent)
		: this(relatedComponent, null)
	{
	}

	public ComponentGlyph(IComponent relatedComponent, Behavior behavior)
		: base(behavior)
	{
		component = relatedComponent;
	}

	[System.MonoTODO]
	public override Cursor GetHitTest(Point p)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void Paint(PaintEventArgs pe)
	{
		throw new NotImplementedException();
	}
}
