using Unity;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
public class HtmlArea : HtmlControl
{
	public string Href
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

	public HtmlArea()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
