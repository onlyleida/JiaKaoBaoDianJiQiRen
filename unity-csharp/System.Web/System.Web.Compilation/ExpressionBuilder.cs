using System.CodeDom;
using System.Web.UI;

namespace System.Web.Compilation;

public abstract class ExpressionBuilder
{
	public virtual bool SupportsEvaluate => false;

	public abstract CodeExpression GetCodeExpression(BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context);

	public virtual object EvaluateExpression(object target, BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		return null;
	}

	public virtual object ParseExpression(string expression, Type propertyType, ExpressionBuilderContext context)
	{
		return null;
	}
}
