using System.ComponentModel;

namespace System.Web.UI.WebControls;

[ControlBuilder(typeof(PlaceHolderControlBuilder))]
public class PlaceHolder : Control
{
	[Browsable(true)]
	public override bool EnableTheming { get; set; }
}
