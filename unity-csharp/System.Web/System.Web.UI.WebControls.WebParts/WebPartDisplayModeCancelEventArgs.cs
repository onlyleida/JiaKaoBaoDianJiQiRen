using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class WebPartDisplayModeCancelEventArgs : CancelEventArgs
{
	public WebPartDisplayMode NewDisplayMode
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

	public WebPartDisplayModeCancelEventArgs(WebPartDisplayMode newDisplayMode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
