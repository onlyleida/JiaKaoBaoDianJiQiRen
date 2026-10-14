using System.CodeDom;
using System.ComponentModel;
using System.Reflection;
using System.Web.Configuration;
using System.Web.UI;

namespace System.Web.Compilation;

[ExpressionPrefix("AppSettings")]
[ExpressionEditor("System.Web.UI.Design.AppSettingsExpressionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class AppSettingsExpressionBuilder : ExpressionBuilder
{
	public override bool SupportsEvaluate => true;

	public override object EvaluateExpression(object target, BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		return GetAppSetting(entry.Expression.Trim());
	}

	public static object GetAppSetting(string key)
	{
		return WebConfigurationManager.AppSettings[key] ?? throw new InvalidOperationException($"The application setting '{key}' was not found.");
	}

	public static object GetAppSetting(string key, Type targetType, string propertyName)
	{
		object appSetting = GetAppSetting(key);
		if (targetType == null)
		{
			return appSetting.ToString();
		}
		PropertyInfo property = targetType.GetProperty(propertyName);
		if (property == null)
		{
			return appSetting.ToString();
		}
		try
		{
			return TypeDescriptor.GetConverter(property.PropertyType).ConvertFrom(appSetting);
		}
		catch (NotSupportedException)
		{
			throw new InvalidOperationException($"Could not convert application setting '{appSetting}'  to type '{property.PropertyType.Name}' for property '{property.Name}'.");
		}
	}

	public override CodeExpression GetCodeExpression(BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(entry.DeclaringType)[entry.PropertyInfo.Name];
		CodeExpression[] parameters = new CodeExpression[3]
		{
			new CodePrimitiveExpression(entry.Expression.Trim()),
			new CodeTypeOfExpression(entry.Type),
			new CodePrimitiveExpression(entry.Name)
		};
		return new CodeCastExpression(propertyDescriptor.PropertyType, new CodeMethodInvokeExpression(new CodeTypeReferenceExpression(GetType()), "GetAppSetting", parameters));
	}
}
