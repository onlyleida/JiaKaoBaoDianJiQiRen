namespace System.Web.UI.Design;

public sealed class ViewEvent
{
	public static readonly ViewEvent Click = new ViewEvent();

	public static readonly ViewEvent Paint = new ViewEvent();

	public static readonly ViewEvent TemplateModeChanged = new ViewEvent();

	private ViewEvent()
	{
	}
}
