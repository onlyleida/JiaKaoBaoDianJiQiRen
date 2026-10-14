using Unity;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
public class HtmlSource : HtmlControl
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

	public HtmlSource()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
