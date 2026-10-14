namespace System.Drawing;

internal struct CocoaContext(IntPtr ctx, int width, int height) : IMacContext
{
	public IntPtr ctx = ctx;

	public int width = width;

	public int height = height;

	public void Synchronize()
	{
		MacSupport.CGContextSynchronize(ctx);
	}

	public void Release()
	{
		MacSupport.CGContextRestoreGState(ctx);
	}
}
