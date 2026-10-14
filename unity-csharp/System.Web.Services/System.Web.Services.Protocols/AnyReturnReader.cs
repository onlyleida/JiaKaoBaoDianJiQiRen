using System.IO;
using System.Net;

namespace System.Web.Services.Protocols;

public class AnyReturnReader : MimeReturnReader
{
	public override void Initialize(object o)
	{
	}

	public override object GetInitializer(LogicalMethodInfo methodInfo)
	{
		if (methodInfo.IsVoid)
		{
			return null;
		}
		return this;
	}

	public override object Read(WebResponse response, Stream responseStream)
	{
		return responseStream;
	}
}
