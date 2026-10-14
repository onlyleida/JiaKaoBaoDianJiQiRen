using System.ComponentModel;

namespace System.Web.UI.Adapters;

public abstract class ControlAdapter
{
	internal Control control;

	protected HttpBrowserCapabilities Browser => Page?.Request.Browser;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected Control Control => control;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected Page Page => Control?.Page;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected PageAdapter PageAdapter => Page?.PageAdapter;

	internal ControlAdapter(Control c)
	{
		control = c;
	}

	protected ControlAdapter()
	{
	}

	protected internal virtual void BeginRender(HtmlTextWriter writer)
	{
		writer.BeginRender();
	}

	protected internal virtual void CreateChildControls()
	{
		Control?.CreateChildControls();
	}

	protected internal virtual void EndRender(HtmlTextWriter writer)
	{
		writer.EndRender();
	}

	protected internal virtual void LoadAdapterControlState(object state)
	{
	}

	protected internal virtual void LoadAdapterViewState(object state)
	{
	}

	protected internal virtual void OnInit(EventArgs e)
	{
		Control?.OnInit(e);
	}

	protected internal virtual void OnLoad(EventArgs e)
	{
		Control?.OnLoad(e);
	}

	protected internal virtual void OnPreRender(EventArgs e)
	{
		Control?.OnPreRender(e);
	}

	protected internal virtual void OnUnload(EventArgs e)
	{
		Control?.OnUnload(e);
	}

	protected internal virtual void Render(HtmlTextWriter writer)
	{
		Control?.Render(writer);
	}

	protected internal virtual void RenderChildren(HtmlTextWriter writer)
	{
		Control?.RenderChildren(writer);
	}

	protected internal virtual object SaveAdapterControlState()
	{
		return null;
	}

	protected internal virtual object SaveAdapterViewState()
	{
		return null;
	}
}
