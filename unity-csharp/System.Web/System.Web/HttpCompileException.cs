using System.CodeDom.Compiler;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCompileException : HttpException
{
	private CompilerResults results;

	private string sourceCode;

	public CompilerResults Results
	{
		[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.High)]
		get
		{
			return results;
		}
	}

	public string SourceCode
	{
		[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.High)]
		get
		{
			return sourceCode;
		}
	}

	public override string Message => base.Message;

	public HttpCompileException()
	{
	}

	public HttpCompileException(string message)
		: base(message)
	{
	}

	public HttpCompileException(string message, Exception innerException)
		: base(message, innerException)
	{
	}

	public HttpCompileException(CompilerResults results, string sourceCode)
	{
		this.results = results;
		this.sourceCode = sourceCode;
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		sourceCode = info.GetString("sourcecode");
		results = (CompilerResults)info.GetValue("results", typeof(CompilerResults));
	}
}
