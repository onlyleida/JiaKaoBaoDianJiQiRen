using System.Runtime.InteropServices;

namespace System.Windows.Forms;

[Flags]
[ComVisible(true)]
public enum ArrangeDirection
{
	Left = 0,
	Right = 0,
	Down = 4,
	Up = Down
}
