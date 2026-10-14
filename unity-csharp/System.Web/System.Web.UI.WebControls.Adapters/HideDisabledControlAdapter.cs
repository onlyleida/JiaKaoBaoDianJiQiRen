namespace System.Web.UI.WebControls.Adapters;

public class HideDisabledControlAdapter : WebControlAdapter
{
	public HideDisabledControlAdapter()
	{
	}

	internal HideDisabledControlAdapter(WebControl c)
		: base(c)
	{
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (Control.IsEnabled)
		{
			base.Render(writer);
		}
	}
}
