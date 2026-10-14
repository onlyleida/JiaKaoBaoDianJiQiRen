namespace System.Web.UI.WebControls;

public class PlaceHolderControlBuilder : ControlBuilder
{
	public override bool AllowWhitespaceLiterals()
	{
		return false;
	}
}
