namespace System.Web.UI;

public sealed class SkinBuilder : ControlBuilder
{
	private Control control;

	public SkinBuilder(ThemeProvider provider, Control control, ControlBuilder skinBuilder, string themePath)
	{
		this.control = control;
	}

	public Control ApplyTheme()
	{
		return control;
	}
}
