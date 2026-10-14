using System.Web.UI;

namespace System.Web.Compilation;

public sealed class ExpressionBuilderContext
{
	private TemplateControl tcontrol;

	private string vpath;

	public TemplateControl TemplateControl => tcontrol;

	public string VirtualPath => vpath;

	public ExpressionBuilderContext(string virtualPath)
	{
		vpath = virtualPath;
	}

	public ExpressionBuilderContext(TemplateControl templateControl)
	{
		tcontrol = templateControl;
	}
}
