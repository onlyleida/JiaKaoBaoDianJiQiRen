using Unity;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
public class HtmlTrack : HtmlControl
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

	public HtmlTrack()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
