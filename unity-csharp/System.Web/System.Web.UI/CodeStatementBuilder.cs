using System.CodeDom;
using Unity;

namespace System.Web.UI;

public abstract class CodeStatementBuilder : ControlBuilder
{
	protected CodeStatementBuilder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract CodeStatement BuildStatement(CodeArgumentReferenceExpression writerReferenceExpression);
}
