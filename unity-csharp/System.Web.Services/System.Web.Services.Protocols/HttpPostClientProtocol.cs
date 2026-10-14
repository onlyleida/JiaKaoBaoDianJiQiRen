using System.Net;

namespace System.Web.Services.Protocols;

public class HttpPostClientProtocol : HttpSimpleClientProtocol
{
	protected override WebRequest GetWebRequest(Uri uri)
	{
		WebRequest webRequest = base.GetWebRequest(uri);
		webRequest.Method = "POST";
		return webRequest;
	}
}
