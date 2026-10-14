using System.CodeDom;
using System.Configuration;
using System.Web.Configuration;
using System.Web.UI;

namespace System.Web.Compilation;

[ExpressionEditor("System.Web.UI.Design.ConnectionStringsExpressionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ExpressionPrefix("ConnectionStrings")]
public class ConnectionStringsExpressionBuilder : ExpressionBuilder
{
	public override bool SupportsEvaluate => true;

	public override object EvaluateExpression(object target, BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		return GetConnectionString(entry.Expression.Trim());
	}

	public override CodeExpression GetCodeExpression(BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		Pair pair = parsedData as Pair;
		return new CodeMethodInvokeExpression(new CodeTypeReferenceExpression(typeof(ConnectionStringsExpressionBuilder)), ((bool)pair.Second) ? "GetConnectionStringProviderName" : "GetConnectionString", new CodePrimitiveExpression(pair.First));
	}

	public static string GetConnectionString(string connectionStringName)
	{
		ConnectionStringSettings connectionStringSettings = WebConfigurationManager.ConnectionStrings[connectionStringName];
		if (connectionStringSettings == null)
		{
			return string.Empty;
		}
		return connectionStringSettings.ConnectionString;
	}

	public static string GetConnectionStringProviderName(string connectionStringName)
	{
		ConnectionStringSettings connectionStringSettings = WebConfigurationManager.ConnectionStrings[connectionStringName];
		if (connectionStringSettings == null)
		{
			return string.Empty;
		}
		return connectionStringSettings.ProviderName;
	}

	public override object ParseExpression(string expression, Type propertyType, ExpressionBuilderContext context)
	{
		bool flag = false;
		string x = string.Empty;
		if (!string.IsNullOrEmpty(expression))
		{
			int num = expression.Length;
			if (expression.EndsWith(".providername", StringComparison.InvariantCultureIgnoreCase))
			{
				flag = true;
				num -= 13;
			}
			else if (expression.EndsWith(".connectionstring", StringComparison.InvariantCultureIgnoreCase))
			{
				num -= 17;
			}
			x = expression.Substring(0, num);
		}
		return new Pair(x, flag);
	}
}
