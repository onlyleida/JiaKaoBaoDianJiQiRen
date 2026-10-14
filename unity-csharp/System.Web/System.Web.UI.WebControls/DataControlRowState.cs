namespace System.Web.UI.WebControls;

[Flags]
public enum DataControlRowState
{
	Normal = 0,
	Alternate = 1,
	Selected = 2,
	Edit = 4,
	Insert = 8
}
