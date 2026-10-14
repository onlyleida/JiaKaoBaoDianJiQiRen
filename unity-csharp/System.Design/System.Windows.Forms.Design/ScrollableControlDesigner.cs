using System.Drawing;

namespace System.Windows.Forms.Design;

public class ScrollableControlDesigner : ParentControlDesigner
{
	private const int HTHSCROLL = 6;

	private const int HTVSCROLL = 7;

	protected override bool GetHitTest(Point pt)
	{
		if (base.GetHitTest(pt))
		{
			return true;
		}
		if (Control is ScrollableControl && ((ScrollableControl)Control).AutoScroll)
		{
			int num = (int)Native.SendMessage(Control.Handle, Native.Msg.WM_NCHITTEST, IntPtr.Zero, Native.LParam(pt.X, pt.Y));
			if (num == 6 || num == 7)
			{
				return true;
			}
		}
		return false;
	}

	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
		if (m.Msg == 276 || m.Msg == 277)
		{
			DefWndProc(ref m);
		}
	}
}
