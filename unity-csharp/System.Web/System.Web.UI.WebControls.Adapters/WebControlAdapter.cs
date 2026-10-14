using System.Web.UI.Adapters;

namespace System.Web.UI.WebControls.Adapters;

public class WebControlAdapter : ControlAdapter
{
	protected new WebControl Control => (WebControl)control;

	protected bool IsEnabled => Control.IsEnabled;

	public WebControlAdapter()
	{
	}

	internal WebControlAdapter(WebControl wc)
		: base(wc)
	{
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		RenderBeginTag(writer);
		RenderContents(writer);
		RenderEndTag(writer);
	}

	protected virtual void RenderBeginTag(HtmlTextWriter writer)
	{
		Control.RenderBeginTag(writer);
	}

	protected virtual void RenderContents(HtmlTextWriter writer)
	{
		Control.RenderContents(writer);
	}

	protected virtual void RenderEndTag(HtmlTextWriter writer)
	{
		Control.RenderEndTag(writer);
	}
}
