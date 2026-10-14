using System.CodeDom;
using System.Collections;
using System.Reflection;

namespace System.ComponentModel.Design.Serialization;

public class CollectionCodeDomSerializer : CodeDomSerializer
{
	protected bool MethodSupportsSerialization(MethodInfo method)
	{
		return true;
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		if (!(value is ICollection collection))
		{
			throw new ArgumentException("originalCollection is not an ICollection");
		}
		CodeExpression targetExpression = null;
		ExpressionContext expressionContext = manager.Context[typeof(ExpressionContext)] as ExpressionContext;
		RootContext rootContext = manager.Context[typeof(RootContext)] as RootContext;
		if (expressionContext != null && expressionContext.PresetValue == value)
		{
			targetExpression = expressionContext.Expression;
		}
		else if (rootContext != null)
		{
			targetExpression = rootContext.Expression;
		}
		ArrayList arrayList = new ArrayList();
		foreach (object item in collection)
		{
			arrayList.Add(item);
		}
		return SerializeCollection(manager, targetExpression, value.GetType(), collection, arrayList);
	}

	protected virtual object SerializeCollection(IDesignerSerializationManager manager, CodeExpression targetExpression, Type targetType, ICollection originalCollection, ICollection valuesToSerialize)
	{
		if (valuesToSerialize == null)
		{
			throw new ArgumentNullException("valuesToSerialize");
		}
		if (originalCollection == null)
		{
			throw new ArgumentNullException("originalCollection");
		}
		if (targetType == null)
		{
			throw new ArgumentNullException("targetType");
		}
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		if (valuesToSerialize.Count == 0)
		{
			return null;
		}
		MethodInfo methodInfo = null;
		try
		{
			object obj = null;
			IEnumerator enumerator = valuesToSerialize.GetEnumerator();
			enumerator.MoveNext();
			obj = enumerator.Current;
			methodInfo = GetExactMethod(targetType, "Add", new object[1] { obj });
		}
		catch
		{
			ReportError(manager, "A compatible Add/AddRange method is missing in the collection type '" + targetType.Name + "'");
		}
		if (methodInfo == null)
		{
			return null;
		}
		CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
		foreach (object item in valuesToSerialize)
		{
			CodeMethodInvokeExpression codeMethodInvokeExpression = new CodeMethodInvokeExpression();
			codeMethodInvokeExpression.Method = new CodeMethodReferenceExpression(targetExpression, "Add");
			CodeExpression codeExpression = SerializeToExpression(manager, item);
			if (codeExpression != null)
			{
				codeMethodInvokeExpression.Parameters.AddRange(new CodeExpression[1] { codeExpression });
				codeStatementCollection.Add(codeMethodInvokeExpression);
			}
		}
		return codeStatementCollection;
	}

	private MethodInfo GetExactMethod(Type type, string methodName, ICollection argsCollection)
	{
		object[] array = null;
		Type[] array2 = Type.EmptyTypes;
		if (argsCollection != null)
		{
			array = new object[argsCollection.Count];
			array2 = new Type[argsCollection.Count];
			argsCollection.CopyTo(array, 0);
			for (int i = 0; i < array.Length; i++)
			{
				if (array[i] == null)
				{
					array2[i] = null;
				}
				else
				{
					array2[i] = array[i].GetType();
				}
			}
		}
		return type.GetMethod(methodName, array2);
	}
}
