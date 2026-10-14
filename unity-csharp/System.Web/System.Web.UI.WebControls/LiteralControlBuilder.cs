namespace System.Web.UI.WebControls;

public class LiteralControlBuilder : ControlBuilder
{
	public override bool AllowWhitespaceLiterals()
	{
		return false;
	}

	public override void AppendSubBuilder(ControlBuilder subBuilder)
	{
		throw new HttpException("LiteralControlBuilder should never be called");
	}

	public override void AppendLiteralString(string s)
	{
		base.AppendLiteralString(s);
	}
}
