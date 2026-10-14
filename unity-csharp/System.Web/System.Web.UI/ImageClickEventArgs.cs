namespace System.Web.UI;

public sealed class ImageClickEventArgs : EventArgs
{
	public int X;

	public int Y;

	public double XRaw;

	public double YRaw;

	public ImageClickEventArgs(int x, int y)
	{
		X = x;
		Y = y;
	}

	public ImageClickEventArgs(int x, int y, double xRaw, double yRaw)
	{
		X = x;
		Y = y;
		XRaw = xRaw;
		YRaw = yRaw;
	}
}
