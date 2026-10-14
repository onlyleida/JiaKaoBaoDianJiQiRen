using System.Collections.Specialized;
using System.Reflection;

namespace System.Web.Services.Protocols;

public abstract class ValueCollectionParameterReader : MimeParameterReader
{
	private ParameterInfo[] paramInfos;

	public override void Initialize(object o)
	{
		paramInfos = (ParameterInfo[])o;
	}

	public override object GetInitializer(LogicalMethodInfo methodInfo)
	{
		if (!IsSupported(methodInfo))
		{
			return null;
		}
		return methodInfo.InParameters;
	}

	protected object[] Read(NameValueCollection collection)
	{
		object[] array = new object[paramInfos.Length];
		for (int i = 0; i < paramInfos.Length; i++)
		{
			ParameterInfo parameterInfo = paramInfos[i];
			if (parameterInfo.ParameterType.IsArray)
			{
				string[] values = collection.GetValues(parameterInfo.Name);
				Type elementType = parameterInfo.ParameterType.GetElementType();
				Array array2 = Array.CreateInstance(elementType, values.Length);
				for (int j = 0; j < values.Length; j++)
				{
					string value = values[j];
					array2.SetValue(ScalarFormatter.FromString(value, elementType), j);
				}
				array[i] = array2;
			}
			else
			{
				string text = collection[parameterInfo.Name];
				if (text == null)
				{
					throw new InvalidOperationException(Res.GetString("WebMissingParameter", parameterInfo.Name));
				}
				array[i] = ScalarFormatter.FromString(text, parameterInfo.ParameterType);
			}
		}
		return array;
	}

	public static bool IsSupported(LogicalMethodInfo methodInfo)
	{
		if (methodInfo.OutParameters.Length != 0)
		{
			return false;
		}
		ParameterInfo[] inParameters = methodInfo.InParameters;
		for (int i = 0; i < inParameters.Length; i++)
		{
			if (!IsSupported(inParameters[i]))
			{
				return false;
			}
		}
		return true;
	}

	public static bool IsSupported(ParameterInfo paramInfo)
	{
		Type type = paramInfo.ParameterType;
		if (type.IsArray)
		{
			type = type.GetElementType();
		}
		return ScalarFormatter.IsTypeSupported(type);
	}
}
