using System.Globalization;
using System.IO;
using System.Text;

namespace System.Web.Services.Protocols;

public class UrlParameterWriter : UrlEncodedParameterWriter
{
	public override string GetRequestUrl(string url, object[] parameters)
	{
		if (parameters.Length == 0)
		{
			return url;
		}
		StringBuilder stringBuilder = new StringBuilder(url);
		stringBuilder.Append('?');
		TextWriter textWriter = new StringWriter(stringBuilder, CultureInfo.InvariantCulture);
		Encode(textWriter, parameters);
		textWriter.Flush();
		return stringBuilder.ToString();
	}
}
