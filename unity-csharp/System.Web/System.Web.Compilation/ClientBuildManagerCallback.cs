using System.CodeDom.Compiler;

namespace System.Web.Compilation;

public class ClientBuildManagerCallback : MarshalByRefObject
{
	public virtual void ReportCompilerError(CompilerError error)
	{
	}

	public virtual void ReportParseError(ParserError error)
	{
	}

	public virtual void ReportProgress(string message)
	{
	}
}
