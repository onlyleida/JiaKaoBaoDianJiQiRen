using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpParseException : HttpException
{
	private int line;

	private string virtualPath;

	private ParserErrorCollection errors = new ParserErrorCollection();

	public string FileName => virtualPath;

	public int Line => line;

	public string VirtualPath => virtualPath;

	public ParserErrorCollection ParserErrors => errors;

	internal HttpParseException(string message, string virtualPath, int line)
		: base(message)
	{
		this.virtualPath = virtualPath;
		this.line = line;
	}

	private HttpParseException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		line = info.GetInt32("_line");
		virtualPath = info.GetString("_virtualPath");
		errors = info.GetValue("_parserErrors", typeof(ParserErrorCollection)) as ParserErrorCollection;
	}

	public HttpParseException()
		: this("External component has thrown an exception")
	{
	}

	public HttpParseException(string message)
		: base(message)
	{
		errors.Add(new ParserError(message, null, 0));
	}

	public HttpParseException(string message, Exception innerException)
		: base(message, innerException)
	{
		errors.Add(new ParserError(message, null, 0));
	}

	public HttpParseException(string message, Exception innerException, string virtualPath, string sourceCode, int line)
		: base(message, innerException)
	{
		this.virtualPath = virtualPath;
		this.line = line;
		errors.Add(new ParserError(message, virtualPath, line));
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue("_virtualPath", virtualPath);
		info.AddValue("_parserErrors", errors);
		info.AddValue("_line", line);
	}
}
