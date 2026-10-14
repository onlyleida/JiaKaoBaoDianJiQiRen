namespace System.Web.UI.Design;

public class TemplateModeChangedEventArgs : EventArgs
{
	private TemplateGroup group;

	public TemplateGroup NewTemplateGroup => group;

	public TemplateModeChangedEventArgs(TemplateGroup newTemplateGroup)
	{
		group = newTemplateGroup;
	}
}
