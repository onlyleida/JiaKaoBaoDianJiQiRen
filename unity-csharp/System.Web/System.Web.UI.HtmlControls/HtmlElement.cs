using Unity;

namespace System.Web.UI.HtmlControls;

public class HtmlElement : HtmlContainerControl
{
	public string Manifest
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

	public HtmlElement()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
