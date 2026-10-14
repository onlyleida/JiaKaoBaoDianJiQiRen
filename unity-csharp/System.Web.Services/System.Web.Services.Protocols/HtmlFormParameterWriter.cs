using System.IO;
using System.Net;
using System.Text;

namespace System.Web.Services.Protocols;

public class HtmlFormParameterWriter : UrlEncodedParameterWriter
{
	public override bool UsesWriteRequest => true;

	public override void InitializeRequest(WebRequest request, object[] values)
	{
		request.ContentType = ContentType.Compose("application/x-www-form-urlencoded", RequestEncoding);
	}

	public override void WriteRequest(Stream requestStream, object[] values)
	{
		if (values.Length != 0)
		{
			TextWriter textWriter = new StreamWriter(requestStream, new ASCIIEncoding());
			Encode(textWriter, values);
			textWriter.Flush();
		}
	}
}
