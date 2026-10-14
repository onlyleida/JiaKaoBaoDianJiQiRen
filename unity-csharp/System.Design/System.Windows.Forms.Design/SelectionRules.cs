namespace System.Windows.Forms.Design;

[Flags]
public enum SelectionRules
{
	AllSizeable = 0xF,
	BottomSizeable = 2,
	LeftSizeable = 4,
	Locked = int.MinValue,
	Moveable = 0x10000000,
	None = 0,
	RightSizeable = 8,
	TopSizeable = 1,
	Visible = 0x40000000
}
