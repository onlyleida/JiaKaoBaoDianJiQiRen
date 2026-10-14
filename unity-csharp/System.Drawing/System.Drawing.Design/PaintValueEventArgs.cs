using System.ComponentModel;
using System.Security.Permissions;

namespace System.Drawing.Design;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public class PaintValueEventArgs : EventArgs
{
	private readonly ITypeDescriptorContext context;

	private readonly object valueToPaint;

	private readonly Graphics graphics;

	private readonly Rectangle bounds;

	public Rectangle Bounds => bounds;

	public ITypeDescriptorContext Context => context;

	public Graphics Graphics => graphics;

	public object Value => valueToPaint;

	public PaintValueEventArgs(ITypeDescriptorContext context, object value, Graphics graphics, Rectangle bounds)
	{
		this.context = context;
		valueToPaint = value;
		this.graphics = graphics;
		if (graphics == null)
		{
			throw new ArgumentNullException("graphics");
		}
		this.bounds = bounds;
	}
}
