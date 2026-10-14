using System.ComponentModel;

namespace System.Web.UI.WebControls;

[TypeConverter(typeof(HorizontalAlignConverter))]
public enum HorizontalAlign
{
	NotSet,
	Left,
	Center,
	Right,
	Justify
}
