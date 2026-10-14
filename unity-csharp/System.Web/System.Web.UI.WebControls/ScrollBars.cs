namespace System.Web.UI.WebControls;

[Flags]
public enum ScrollBars
{
	None = 0,
	Horizontal = 1,
	Vertical = 2,
	Both = Horizontal | Vertical,
	Auto = 4
}
