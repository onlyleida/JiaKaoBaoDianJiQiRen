using System.CodeDom;
using System.ComponentModel;
using System.Web.Routing;
using System.Web.UI;

namespace System.Web.Compilation;

[ExpressionEditor("System.Web.UI.Design.RouteValueExpressionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ExpressionPrefix("Routes")]
public class RouteValueExpressionBuilder : ExpressionBuilder
{
	public override bool SupportsEvaluate => true;

	public override object EvaluateExpression(object target, BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		throw new NotImplementedException();
	}

	public override CodeExpression GetCodeExpression(BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		if (entry == null)
		{
			throw new NullReferenceException(".NET emulation (entry == null)");
		}
		CodeMethodInvokeExpression codeMethodInvokeExpression = new CodeMethodInvokeExpression
		{
			Method = new CodeMethodReferenceExpression(new CodeTypeReferenceExpression(typeof(RouteValueExpressionBuilder)), "GetRouteValue")
		};
		CodeThisReferenceExpression targetObject = new CodeThisReferenceExpression();
		CodeExpressionCollection parameters = codeMethodInvokeExpression.Parameters;
		parameters.Add(new CodePropertyReferenceExpression(targetObject, "Page"));
		parameters.Add(new CodePrimitiveExpression(entry.Expression));
		parameters.Add(new CodeTypeOfExpression(new CodeTypeReference(entry.DeclaringType)));
		parameters.Add(new CodePrimitiveExpression(entry.Name));
		return codeMethodInvokeExpression;
	}

	public static object GetRouteValue(Page page, string key, Type controlType, string propertyName)
	{
		RouteData routeData = page?.RouteData;
		if (routeData == null || string.IsNullOrEmpty(key))
		{
			return null;
		}
		object obj = routeData.Values[key];
		if (obj == null)
		{
			return null;
		}
		if (controlType == null || string.IsNullOrEmpty(propertyName) || !(obj is string))
		{
			return obj;
		}
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(controlType);
		if (properties == null || properties.Count == 0)
		{
			return obj;
		}
		PropertyDescriptor propertyDescriptor = properties[propertyName];
		if (propertyDescriptor == null)
		{
			return obj;
		}
		TypeConverter converter = propertyDescriptor.Converter;
		if (converter == null || !converter.CanConvertFrom(typeof(string)))
		{
			return obj;
		}
		return converter.ConvertFrom(obj);
	}
}
