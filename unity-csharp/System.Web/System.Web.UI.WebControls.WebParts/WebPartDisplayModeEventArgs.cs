using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class WebPartDisplayModeEventArgs : EventArgs
{
	public WebPartDisplayMode OldDisplayMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WebPartDisplayModeEventArgs(WebPartDisplayMode oldDisplayMode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
