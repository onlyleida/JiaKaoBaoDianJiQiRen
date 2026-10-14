namespace System.Web.UI.WebControls.WebParts;

public class WebPartEventArgs : EventArgs
{
	private WebPart _webPart;

	public WebPart WebPart => _webPart;

	public WebPartEventArgs(WebPart webPart)
	{
		_webPart = webPart;
	}
}
