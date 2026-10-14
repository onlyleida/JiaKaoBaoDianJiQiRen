using System.Collections;
using System.Reflection;
using System.Security.Cryptography;
using System.Security.Permissions;
using System.Text;

namespace System.Web.Services.Protocols;

public sealed class LogicalMethodInfo
{
	private MethodInfo methodInfo;

	private MethodInfo endMethodInfo;

	private ParameterInfo[] inParams;

	private ParameterInfo[] outParams;

	private ParameterInfo[] parameters;

	private Hashtable attributes;

	private Type retType;

	private ParameterInfo callbackParam;

	private ParameterInfo stateParam;

	private ParameterInfo resultParam;

	private string methodName;

	private bool isVoid;

	private static object[] emptyObjectArray = new object[0];

	private WebServiceBindingAttribute binding;

	private WebMethodAttribute attribute;

	private MethodInfo declaration;

	private static HashAlgorithm hash;

	internal WebServiceBindingAttribute Binding => binding;

	internal MethodInfo Declaration => declaration;

	public Type DeclaringType => methodInfo.DeclaringType;

	public string Name => methodName;

	public ParameterInfo AsyncResultParameter => resultParam;

	public ParameterInfo AsyncCallbackParameter => callbackParam;

	public ParameterInfo AsyncStateParameter => stateParam;

	public Type ReturnType => retType;

	public bool IsVoid => isVoid;

	public bool IsAsync => endMethodInfo != null;

	public ParameterInfo[] InParameters => inParams;

	public ParameterInfo[] OutParameters => outParams;

	public ParameterInfo[] Parameters => parameters;

	internal WebMethodAttribute MethodAttribute
	{
		get
		{
			if (attribute == null)
			{
				attribute = (WebMethodAttribute)GetCustomAttribute(typeof(WebMethodAttribute));
				if (attribute == null)
				{
					attribute = new WebMethodAttribute();
				}
			}
			return attribute;
		}
	}

	public ICustomAttributeProvider CustomAttributeProvider => methodInfo;

	public ICustomAttributeProvider ReturnTypeCustomAttributeProvider
	{
		get
		{
			if (declaration != null)
			{
				return declaration.ReturnTypeCustomAttributes;
			}
			return methodInfo.ReturnTypeCustomAttributes;
		}
	}

	public MethodInfo MethodInfo
	{
		get
		{
			if (!(endMethodInfo == null))
			{
				return null;
			}
			return methodInfo;
		}
	}

	public MethodInfo BeginMethodInfo => methodInfo;

	public MethodInfo EndMethodInfo => endMethodInfo;

	internal static HashAlgorithm HashAlgorithm
	{
		get
		{
			if (hash == null)
			{
				hash = SHA1.Create();
			}
			return hash;
		}
	}

	public LogicalMethodInfo(MethodInfo methodInfo)
		: this(methodInfo, null)
	{
	}

	internal LogicalMethodInfo(MethodInfo methodInfo, WebMethod webMethod)
	{
		if (methodInfo.IsStatic)
		{
			throw new InvalidOperationException(Res.GetString("WebMethodStatic", methodInfo.Name));
		}
		this.methodInfo = methodInfo;
		if (webMethod != null)
		{
			binding = webMethod.binding;
			attribute = webMethod.attribute;
			declaration = webMethod.declaration;
		}
		MethodInfo methodInfo2 = ((declaration != null) ? declaration : methodInfo);
		parameters = methodInfo2.GetParameters();
		inParams = GetInParameters(methodInfo2, parameters, 0, parameters.Length, mustBeIn: false);
		outParams = GetOutParameters(methodInfo2, parameters, 0, parameters.Length, mustBeOut: false);
		retType = methodInfo2.ReturnType;
		isVoid = retType == typeof(void);
		methodName = methodInfo2.Name;
		attributes = new Hashtable();
	}

	private LogicalMethodInfo(MethodInfo beginMethodInfo, MethodInfo endMethodInfo, WebMethod webMethod)
	{
		methodInfo = beginMethodInfo;
		this.endMethodInfo = endMethodInfo;
		methodName = beginMethodInfo.Name.Substring(5);
		if (webMethod != null)
		{
			binding = webMethod.binding;
			attribute = webMethod.attribute;
			declaration = webMethod.declaration;
		}
		ParameterInfo[] array = beginMethodInfo.GetParameters();
		if (array.Length < 2 || array[array.Length - 1].ParameterType != typeof(object) || array[array.Length - 2].ParameterType != typeof(AsyncCallback))
		{
			throw new InvalidOperationException(Res.GetString("WebMethodMissingParams", beginMethodInfo.DeclaringType.FullName, beginMethodInfo.Name, typeof(AsyncCallback).FullName, typeof(object).FullName));
		}
		stateParam = array[array.Length - 1];
		callbackParam = array[array.Length - 2];
		inParams = GetInParameters(beginMethodInfo, array, 0, array.Length - 2, mustBeIn: true);
		ParameterInfo[] array2 = endMethodInfo.GetParameters();
		resultParam = array2[0];
		outParams = GetOutParameters(endMethodInfo, array2, 1, array2.Length - 1, mustBeOut: true);
		parameters = new ParameterInfo[inParams.Length + outParams.Length];
		inParams.CopyTo(parameters, 0);
		outParams.CopyTo(parameters, inParams.Length);
		retType = endMethodInfo.ReturnType;
		isVoid = retType == typeof(void);
		attributes = new Hashtable();
	}

	public override string ToString()
	{
		return methodInfo.ToString();
	}

	[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
	public object[] Invoke(object target, object[] values)
	{
		if (outParams.Length != 0)
		{
			object[] array = new object[parameters.Length];
			for (int i = 0; i < inParams.Length; i++)
			{
				array[inParams[i].Position] = values[i];
			}
			values = array;
		}
		object obj = methodInfo.Invoke(target, values);
		if (outParams.Length != 0)
		{
			int num = outParams.Length;
			if (!isVoid)
			{
				num++;
			}
			object[] array2 = new object[num];
			num = 0;
			if (!isVoid)
			{
				array2[num++] = obj;
			}
			for (int j = 0; j < outParams.Length; j++)
			{
				array2[num++] = values[outParams[j].Position];
			}
			return array2;
		}
		if (isVoid)
		{
			return emptyObjectArray;
		}
		return new object[1] { obj };
	}

	[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
	public IAsyncResult BeginInvoke(object target, object[] values, AsyncCallback callback, object asyncState)
	{
		object[] array = new object[values.Length + 2];
		values.CopyTo(array, 0);
		array[values.Length] = callback;
		array[values.Length + 1] = asyncState;
		return (IAsyncResult)methodInfo.Invoke(target, array);
	}

	[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
	public object[] EndInvoke(object target, IAsyncResult asyncResult)
	{
		object[] array = new object[outParams.Length + 1];
		array[0] = asyncResult;
		object obj = endMethodInfo.Invoke(target, array);
		if (!isVoid)
		{
			array[0] = obj;
			return array;
		}
		if (outParams.Length != 0)
		{
			object[] array2 = new object[outParams.Length];
			Array.Copy(array, 1, array2, 0, array2.Length);
			return array2;
		}
		return emptyObjectArray;
	}

	public object[] GetCustomAttributes(Type type)
	{
		object[] array = null;
		array = (object[])attributes[type];
		if (array != null)
		{
			return array;
		}
		lock (attributes)
		{
			array = (object[])attributes[type];
			if (array == null)
			{
				if (declaration != null)
				{
					object[] customAttributes = declaration.GetCustomAttributes(type, inherit: false);
					object[] customAttributes2 = methodInfo.GetCustomAttributes(type, inherit: false);
					if (customAttributes2.Length != 0)
					{
						if (!CanMerge(type))
						{
							throw new InvalidOperationException(Res.GetString("ContractOverride", methodInfo.Name, methodInfo.DeclaringType.FullName, declaration.DeclaringType.FullName, declaration.ToString(), customAttributes2[0].ToString()));
						}
						ArrayList arrayList = new ArrayList();
						for (int i = 0; i < customAttributes.Length; i++)
						{
							arrayList.Add(customAttributes[i]);
						}
						for (int j = 0; j < customAttributes2.Length; j++)
						{
							arrayList.Add(customAttributes2[j]);
						}
						array = (object[])arrayList.ToArray(type);
					}
					else
					{
						array = customAttributes;
					}
				}
				else
				{
					array = methodInfo.GetCustomAttributes(type, inherit: false);
				}
				attributes[type] = array;
			}
		}
		return array;
	}

	public object GetCustomAttribute(Type type)
	{
		object[] customAttributes = GetCustomAttributes(type);
		if (customAttributes.Length == 0)
		{
			return null;
		}
		return customAttributes[0];
	}

	private static ParameterInfo[] GetInParameters(MethodInfo methodInfo, ParameterInfo[] paramInfos, int start, int length, bool mustBeIn)
	{
		int num = 0;
		for (int i = 0; i < length; i++)
		{
			ParameterInfo parameterInfo = paramInfos[i + start];
			if (IsInParameter(parameterInfo))
			{
				num++;
			}
			else if (mustBeIn)
			{
				throw new InvalidOperationException(Res.GetString("WebBadOutParameter", parameterInfo.Name, methodInfo.DeclaringType.FullName, parameterInfo.Name));
			}
		}
		ParameterInfo[] array = new ParameterInfo[num];
		num = 0;
		for (int j = 0; j < length; j++)
		{
			ParameterInfo parameterInfo2 = paramInfos[j + start];
			if (IsInParameter(parameterInfo2))
			{
				array[num++] = parameterInfo2;
			}
		}
		return array;
	}

	private static ParameterInfo[] GetOutParameters(MethodInfo methodInfo, ParameterInfo[] paramInfos, int start, int length, bool mustBeOut)
	{
		int num = 0;
		for (int i = 0; i < length; i++)
		{
			ParameterInfo parameterInfo = paramInfos[i + start];
			if (IsOutParameter(parameterInfo))
			{
				num++;
			}
			else if (mustBeOut)
			{
				throw new InvalidOperationException(Res.GetString("WebInOutParameter", parameterInfo.Name, methodInfo.DeclaringType.FullName, parameterInfo.Name));
			}
		}
		ParameterInfo[] array = new ParameterInfo[num];
		num = 0;
		for (int j = 0; j < length; j++)
		{
			ParameterInfo parameterInfo2 = paramInfos[j + start];
			if (IsOutParameter(parameterInfo2))
			{
				array[num++] = parameterInfo2;
			}
		}
		return array;
	}

	private static bool IsInParameter(ParameterInfo paramInfo)
	{
		return !paramInfo.IsOut;
	}

	private static bool IsOutParameter(ParameterInfo paramInfo)
	{
		if (!paramInfo.IsOut)
		{
			return paramInfo.ParameterType.IsByRef;
		}
		return true;
	}

	public static bool IsBeginMethod(MethodInfo methodInfo)
	{
		if (typeof(IAsyncResult).IsAssignableFrom(methodInfo.ReturnType))
		{
			return methodInfo.Name.StartsWith("Begin", StringComparison.Ordinal);
		}
		return false;
	}

	public static bool IsEndMethod(MethodInfo methodInfo)
	{
		ParameterInfo[] array = methodInfo.GetParameters();
		if (array.Length != 0 && typeof(IAsyncResult).IsAssignableFrom(array[0].ParameterType))
		{
			return methodInfo.Name.StartsWith("End", StringComparison.Ordinal);
		}
		return false;
	}

	public static LogicalMethodInfo[] Create(MethodInfo[] methodInfos)
	{
		return Create(methodInfos, (LogicalMethodTypes)3, null);
	}

	public static LogicalMethodInfo[] Create(MethodInfo[] methodInfos, LogicalMethodTypes types)
	{
		return Create(methodInfos, types, null);
	}

	internal static LogicalMethodInfo[] Create(MethodInfo[] methodInfos, LogicalMethodTypes types, Hashtable declarations)
	{
		ArrayList arrayList = (((types & LogicalMethodTypes.Async) != 0) ? new ArrayList() : null);
		Hashtable hashtable = (((types & LogicalMethodTypes.Async) != 0) ? new Hashtable() : null);
		ArrayList arrayList2 = (((types & LogicalMethodTypes.Sync) != 0) ? new ArrayList() : null);
		foreach (MethodInfo methodInfo in methodInfos)
		{
			if (IsBeginMethod(methodInfo))
			{
				arrayList?.Add(methodInfo);
			}
			else if (IsEndMethod(methodInfo))
			{
				hashtable?.Add(methodInfo.Name, methodInfo);
			}
			else
			{
				arrayList2?.Add(methodInfo);
			}
		}
		int num = arrayList?.Count ?? 0;
		int num2 = arrayList2?.Count ?? 0;
		int num3 = num2 + num;
		LogicalMethodInfo[] array = new LogicalMethodInfo[num3];
		num3 = 0;
		for (int j = 0; j < num2; j++)
		{
			MethodInfo key = (MethodInfo)arrayList2[j];
			WebMethod webMethod = ((declarations == null) ? null : ((WebMethod)declarations[key]));
			array[num3] = new LogicalMethodInfo(key, webMethod);
			array[num3].CheckContractOverride();
			num3++;
		}
		for (int k = 0; k < num; k++)
		{
			MethodInfo methodInfo2 = (MethodInfo)arrayList[k];
			string text = "End" + methodInfo2.Name.Substring(5);
			MethodInfo methodInfo3 = (MethodInfo)hashtable[text];
			if (methodInfo3 == null)
			{
				throw new InvalidOperationException(Res.GetString("WebAsyncMissingEnd", methodInfo2.DeclaringType.FullName, methodInfo2.Name, text));
			}
			WebMethod webMethod2 = ((declarations == null) ? null : ((WebMethod)declarations[methodInfo2]));
			array[num3++] = new LogicalMethodInfo(methodInfo2, methodInfo3, webMethod2);
		}
		return array;
	}

	internal string GetKey()
	{
		if (methodInfo == null)
		{
			return string.Empty;
		}
		string text = methodInfo.DeclaringType.FullName + ":" + methodInfo.ToString();
		if (text.Length > 1024)
		{
			text = Convert.ToBase64String(HashAlgorithm.ComputeHash(Encoding.UTF8.GetBytes(text)));
		}
		return text;
	}

	internal void CheckContractOverride()
	{
		if (declaration == null)
		{
			return;
		}
		methodInfo.GetParameters();
		ParameterInfo[] array = methodInfo.GetParameters();
		for (int i = 0; i < array.Length; i++)
		{
			object[] customAttributes = array[i].GetCustomAttributes(inherit: false);
			foreach (object obj in customAttributes)
			{
				if (obj.GetType().Namespace == "System.Xml.Serialization")
				{
					throw new InvalidOperationException(Res.GetString("ContractOverride", methodInfo.Name, methodInfo.DeclaringType.FullName, declaration.DeclaringType.FullName, declaration.ToString(), obj.ToString()));
				}
			}
		}
	}

	internal static bool CanMerge(Type type)
	{
		if (type == typeof(SoapHeaderAttribute))
		{
			return true;
		}
		if (typeof(SoapExtensionAttribute).IsAssignableFrom(type))
		{
			return true;
		}
		return false;
	}
}
