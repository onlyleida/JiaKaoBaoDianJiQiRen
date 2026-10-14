using System.Text;
using System.Web.Util;
using Unity;

namespace System.Web.Security.AntiXss;

public class AntiXssEncoder : HttpEncoder
{
	public AntiXssEncoder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static string CssEncode(string input)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string HtmlEncode(string input, bool useNamedEntities)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string HtmlFormUrlEncode(string input)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string HtmlFormUrlEncode(string input, int codePage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string HtmlFormUrlEncode(string input, Encoding inputEncoding)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static void MarkAsSafe(LowerCodeCharts lowerCodeCharts, LowerMidCodeCharts lowerMidCodeCharts, MidCodeCharts midCodeCharts, UpperMidCodeCharts upperMidCodeCharts, UpperCodeCharts upperCodeCharts)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static string UrlEncode(string input)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string UrlEncode(string input, int codePage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string UrlEncode(string input, Encoding inputEncoding)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string XmlAttributeEncode(string input)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string XmlEncode(string input)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
