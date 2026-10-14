using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartUserCapability
{
	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartUserCapability(string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
