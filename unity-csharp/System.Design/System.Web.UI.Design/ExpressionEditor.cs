using System.Configuration;
using System.Web.Compilation;
using System.Web.Configuration;

namespace System.Web.UI.Design;

public abstract class ExpressionEditor
{
	private Type expressionBuilderType;

	private string prefixFromReflection;

	public string ExpressionPrefix => prefixFromReflection;

	private Type ExpressionBuilderType
	{
		set
		{
			expressionBuilderType = value;
			prefixFromReflection = "";
			object[] customAttributes = expressionBuilderType.GetCustomAttributes(typeof(ExpressionPrefixAttribute), inherit: false);
			if (customAttributes != null && customAttributes.Length != 0)
			{
				ExpressionPrefixAttribute expressionPrefixAttribute = (ExpressionPrefixAttribute)customAttributes[0];
				prefixFromReflection = expressionPrefixAttribute.ExpressionPrefix;
			}
		}
	}

	public abstract object EvaluateExpression(string expression, object parseTimeData, Type propertyType, IServiceProvider serviceProvider);

	public static ExpressionEditor GetExpressionEditor(string expressionPrefix, IServiceProvider serviceProvider)
	{
		if (serviceProvider == null)
		{
			return null;
		}
		IWebApplication webApplication = (IWebApplication)serviceProvider.GetService(typeof(IWebApplication));
		if (webApplication == null)
		{
			return null;
		}
		System.Configuration.Configuration configuration = webApplication.OpenWebConfiguration(isReadOnly: true);
		if (configuration == null)
		{
			return null;
		}
		System.Web.Configuration.ExpressionBuilder expressionBuilder = ((CompilationSection)configuration.GetSection("system.web/compilation")).ExpressionBuilders[expressionPrefix];
		if (expressionBuilder == null)
		{
			return null;
		}
		return GetExpressionEditor(Type.GetType(expressionBuilder.Type), serviceProvider);
	}

	[System.MonoTODO("the docs make it sound like this still requires accessing <expressionBuilders>")]
	public static ExpressionEditor GetExpressionEditor(Type expressionBuilderType, IServiceProvider serviceProvider)
	{
		object[] customAttributes = expressionBuilderType.GetCustomAttributes(typeof(ExpressionEditorAttribute), inherit: false);
		if (customAttributes == null || customAttributes.Length == 0)
		{
			return null;
		}
		ExpressionEditor expressionEditor = (ExpressionEditor)Activator.CreateInstance(Type.GetType(((ExpressionEditorAttribute)customAttributes[0]).EditorTypeName));
		expressionEditor.ExpressionBuilderType = expressionBuilderType;
		return expressionEditor;
	}

	public virtual ExpressionEditorSheet GetExpressionEditorSheet(string expression, IServiceProvider serviceProvider)
	{
		throw new NotImplementedException();
	}
}
