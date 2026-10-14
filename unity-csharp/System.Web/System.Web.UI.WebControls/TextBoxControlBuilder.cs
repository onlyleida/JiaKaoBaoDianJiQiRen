namespace System.Web.UI.WebControls;

public class TextBoxControlBuilder : ControlBuilder
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
