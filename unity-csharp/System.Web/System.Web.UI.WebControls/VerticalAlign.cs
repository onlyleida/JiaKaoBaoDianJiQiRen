using System.ComponentModel;

namespace System.Web.UI.WebControls;

[TypeConverter(typeof(VerticalAlignConverter))]
public enum VerticalAlign
{
	NotSet,
	Top,
	Middle,
	Bottom
}
