using Unity;

namespace System.Web.UI.HtmlControls;

public class HtmlIframe : HtmlContainerControl
{
	public string Src
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

	public HtmlIframe()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
