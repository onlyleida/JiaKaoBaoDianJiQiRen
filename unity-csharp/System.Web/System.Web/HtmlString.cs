namespace System.Web;

public class HtmlString : IHtmlString
{
	private string _htmlString;

	public HtmlString(string value)
	{
		_htmlString = value;
	}

	public string ToHtmlString()
	{
		return _htmlString;
	}

	public override string ToString()
	{
		return _htmlString;
	}
}
