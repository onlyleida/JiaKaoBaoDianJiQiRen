namespace System.Web.UI.WebControls;

public class ListItemControlBuilder : ControlBuilder
{
	public override bool AllowWhitespaceLiterals()
	{
		return false;
	}

	public override bool HtmlDecodeLiterals()
	{
		return true;
	}
}
