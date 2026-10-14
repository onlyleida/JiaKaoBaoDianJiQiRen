using System.CodeDom;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Web.UI;

namespace System.Web.Compilation;

[ExpressionPrefix("Resources")]
[ExpressionEditor("System.Web.UI.Design.ResourceExpressionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class ResourceExpressionBuilder : ExpressionBuilder
{
	public override bool SupportsEvaluate => true;

	public override object EvaluateExpression(object target, BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		ResourceExpressionFields resourceExpressionFields = parsedData as ResourceExpressionFields;
		return HttpContext.GetGlobalResourceObject(resourceExpressionFields.ClassKey, resourceExpressionFields.ResourceKey);
	}

	public override CodeExpression GetCodeExpression(BoundPropertyEntry entry, object parsedData, ExpressionBuilderContext context)
	{
		ResourceExpressionFields resourceExpressionFields = parsedData as ResourceExpressionFields;
		if (entry == null)
		{
			return null;
		}
		if (!string.IsNullOrEmpty(resourceExpressionFields.ClassKey))
		{
			if ((object)entry.PropertyInfo == null)
			{
				return null;
			}
			CodeExpression[] parameters = new CodeExpression[2]
			{
				new CodePrimitiveExpression(resourceExpressionFields.ClassKey),
				new CodePrimitiveExpression(resourceExpressionFields.ResourceKey)
			};
			CodeMethodInvokeExpression expression = new CodeMethodInvokeExpression(new CodeThisReferenceExpression(), "GetGlobalResourceObject", parameters);
			return new CodeCastExpression(entry.PropertyInfo.PropertyType, expression);
		}
		return CreateGetLocalResourceObject(entry, resourceExpressionFields.ResourceKey);
	}

	public static ResourceExpressionFields ParseExpression(string expression)
	{
		int num = expression.IndexOf(',');
		if (num == -1)
		{
			return new ResourceExpressionFields(expression.Trim());
		}
		return new ResourceExpressionFields(expression.Substring(0, num).Trim(), expression.Substring(num + 1).Trim());
	}

	public override object ParseExpression(string expression, Type propertyType, ExpressionBuilderContext context)
	{
		return ParseExpression(expression);
	}

	internal static CodeExpression CreateGetLocalResourceObject(BoundPropertyEntry bpe, string resname)
	{
		if (bpe == null || string.IsNullOrEmpty(resname))
		{
			return null;
		}
		if (bpe.UseSetAttribute)
		{
			return CreateGetLocalResourceObject(bpe.Type, typeof(string), null, resname);
		}
		return CreateGetLocalResourceObject(bpe.PropertyInfo, resname);
	}

	internal static CodeExpression CreateGetLocalResourceObject(MemberInfo mi, string resname)
	{
		if (string.IsNullOrEmpty(resname))
		{
			return null;
		}
		Type type = null;
		if (mi is PropertyInfo)
		{
			type = ((PropertyInfo)mi).PropertyType;
		}
		else
		{
			if (!(mi is FieldInfo))
			{
				return null;
			}
			type = ((FieldInfo)mi).FieldType;
		}
		return CreateGetLocalResourceObject(type, mi.DeclaringType, mi.Name, resname);
	}

	private static CodeExpression CreateGetLocalResourceObject(Type member_type, Type declaringType, string memberName, string resname)
	{
		TypeConverter typeConverter = (string.IsNullOrEmpty(memberName) ? null : TypeDescriptor.GetProperties(declaringType)[memberName].Converter);
		if (member_type != typeof(Color) && (typeConverter == null || typeConverter.CanConvertFrom(typeof(string))))
		{
			CodeMethodInvokeExpression expr = new CodeMethodInvokeExpression(new CodeThisReferenceExpression(), "GetLocalResourceObject", new CodePrimitiveExpression(resname));
			return TemplateControlCompiler.CreateConvertToCall(Type.GetTypeCode(member_type), expr);
		}
		if (!string.IsNullOrEmpty(memberName))
		{
			CodeMethodInvokeExpression expression = new CodeMethodInvokeExpression(new CodeThisReferenceExpression(), "GetLocalResourceObject", new CodePrimitiveExpression(resname), new CodeTypeOfExpression(new CodeTypeReference(declaringType)), new CodePrimitiveExpression(memberName));
			return new CodeCastExpression(member_type, expression);
		}
		return null;
	}
}
