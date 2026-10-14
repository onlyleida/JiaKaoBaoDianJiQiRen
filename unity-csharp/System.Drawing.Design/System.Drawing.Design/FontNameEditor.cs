using System.ComponentModel;

namespace System.Drawing.Design;

public class FontNameEditor : UITypeEditor
{
	private const string PreviewString = "Ab";

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		Graphics graphics = e.Graphics;
		graphics.FillRectangle(SystemBrushes.ActiveCaption, e.Bounds);
		if (e.Value is string { Length: >0 } text)
		{
			using Font font = new Font(text, e.Bounds.Height, FontStyle.Regular, GraphicsUnit.Pixel);
			graphics.DrawString("Ab", font, SystemBrushes.ActiveCaptionText, e.Bounds);
		}
		graphics.DrawRectangle(Pens.Black, e.Bounds);
	}
}
