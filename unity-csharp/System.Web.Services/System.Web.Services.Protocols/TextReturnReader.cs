using System.IO;
using System.Net;
using System.Security.Permissions;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public class TextReturnReader : MimeReturnReader
{
	private PatternMatcher matcher;

	public override void Initialize(object o)
	{
		matcher = (PatternMatcher)o;
	}

	public override object GetInitializer(LogicalMethodInfo methodInfo)
	{
		return new PatternMatcher(methodInfo.ReturnType);
	}

	public override object Read(WebResponse response, Stream responseStream)
	{
		try
		{
			string text = RequestResponseUtils.ReadResponse(response);
			return matcher.Match(text);
		}
		finally
		{
			response.Close();
		}
	}
}
