using Unity;

namespace System.Web.UI.Design;

public class RouteValueExpressionEditor : ExpressionEditor
{
	public RouteValueExpressionEditor()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override object EvaluateExpression(string expression, object parseTimeData, Type propertyType, IServiceProvider serviceProvider)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
