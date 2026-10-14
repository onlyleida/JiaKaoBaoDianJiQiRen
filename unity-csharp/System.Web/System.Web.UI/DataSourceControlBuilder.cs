namespace System.Web.UI;

public sealed class DataSourceControlBuilder : ControlBuilder
{
	public override bool AllowWhitespaceLiterals()
	{
		return false;
	}
}
