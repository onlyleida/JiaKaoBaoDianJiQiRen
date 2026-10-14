using Unity;

namespace System.Web.UI.HtmlControls;

public class HtmlEmbed : HtmlContainerControl
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

	public HtmlEmbed()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
