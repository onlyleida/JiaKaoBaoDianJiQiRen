namespace System.Web.UI.WebControls.Adapters;

public class MenuAdapter : WebControlAdapter, IPostBackEventHandler
{
	protected new Menu Control => (Menu)control;

	public MenuAdapter()
	{
	}

	internal MenuAdapter(Menu c)
		: base(c)
	{
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		Control.RaisePostBackEvent(eventArgument);
	}

	protected override void RenderBeginTag(HtmlTextWriter writer)
	{
		base.RenderBeginTag(writer);
	}

	protected override void RenderContents(HtmlTextWriter writer)
	{
		base.RenderContents(writer);
	}

	protected override void RenderEndTag(HtmlTextWriter writer)
	{
		base.RenderEndTag(writer);
	}

	protected internal virtual void RenderItem(HtmlTextWriter writer, MenuItem item, int position)
	{
		Control.RenderItem(writer, item, position);
	}

	protected internal override void LoadAdapterControlState(object state)
	{
	}

	protected internal override object SaveAdapterControlState()
	{
		return null;
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}
}
