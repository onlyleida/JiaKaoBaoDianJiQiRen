using Unity;

namespace System.Web.UI.HtmlControls;

public class HtmlAudio : HtmlContainerControl
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

	public HtmlAudio()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
