using System.CodeDom;
using System.Web.Routing;
using System.Web.UI;

namespace System.Web.Compilation;

[ExpressionEditor("System.Web.UI.Design.RouteUrlExpressionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ExpressionPrefix("Routes")]
public class RouteUrlExpressionBuilder : ExpressionBuilder
{
	private static readonly char[] expressionSplitChars = new char[1] { ',' };

	private static readonly char[] keyValueSplitChars = new char[1] { '=' };

	public override bool SupportsEvaluate => true;

	public override object EvaluateExpression(object target, BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		if (entry == null)
		{
			throw new NullReferenceException(".NET emulation (entry == null)");
		}
		if (context == null)
		{
			throw new NullReferenceException(".NET emulation (context == null)");
		}
		return GetRouteUrl(context.TemplateControl, entry.Expression);
	}

	public override CodeExpression GetCodeExpression(BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		if (entry == null)
		{
			throw new NullReferenceException(".NET emulation (entry == null)");
		}
		CodeMethodInvokeExpression codeMethodInvokeExpression = new CodeMethodInvokeExpression
		{
			Method = new CodeMethodReferenceExpression(new CodeTypeReferenceExpression(typeof(RouteUrlExpressionBuilder)), "GetRouteUrl")
		};
		CodeExpressionCollection parameters = codeMethodInvokeExpression.Parameters;
		parameters.Add(new CodeThisReferenceExpression());
		parameters.Add(new CodePrimitiveExpression(entry.Expression));
		return codeMethodInvokeExpression;
	}

	public static string GetRouteUrl(Control control, string expression)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		RouteValueDictionary routeValueDictionary = new RouteValueDictionary();
		if (!TryParseRouteExpression(expression, routeValueDictionary, out var routeName))
		{
			throw new InvalidOperationException("Invalid expression, RouteUrlExpressionBuilder expects a string with format: RouteName=route,Key1=Value1,Key2=Value2");
		}
		return control.GetRouteUrl(routeName, routeValueDictionary);
	}

	public static bool TryParseRouteExpression(string expression, RouteValueDictionary routeValues, out string routeName)
	{
		routeName = null;
		if (string.IsNullOrEmpty(expression))
		{
			return false;
		}
		if (routeValues == null)
		{
			throw new NullReferenceException(".NET emulation (routeValues == null)");
		}
		string[] array = expression.Split(expressionSplitChars);
		for (int i = 0; i < array.Length; i++)
		{
			string[] array2 = array[i].Split(keyValueSplitChars);
			if (array2.Length != 2)
			{
				return false;
			}
			string text = array2[0].Trim();
			if (text == string.Empty)
			{
				return false;
			}
			if (string.Compare(text, "routename", StringComparison.OrdinalIgnoreCase) == 0)
			{
				routeName = array2[1].Trim();
			}
			else if (routeValues.ContainsKey(text))
			{
				routeValues[text] = array2[1].Trim();
			}
			else
			{
				routeValues.Add(text, array2[1].Trim());
			}
		}
		return true;
	}
}
