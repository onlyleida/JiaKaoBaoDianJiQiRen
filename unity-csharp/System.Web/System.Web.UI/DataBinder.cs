using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataBinder
{
	[ThreadStatic]
	private static Dictionary<Type, PropertyInfo> dataItemCache;

	public static bool EnableCaching
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal static string FormatResult(object result, string format)
	{
		if (result == null)
		{
			return string.Empty;
		}
		if (format == null || format.Length == 0)
		{
			return result.ToString();
		}
		return string.Format(format, result);
	}

	public static object Eval(object container, string expression)
	{
		expression = expression?.Trim();
		if (expression == null || expression.Length == 0)
		{
			throw new ArgumentNullException("expression");
		}
		object obj = container;
		while (obj != null)
		{
			int num = expression.IndexOf('.');
			int length = ((num == -1) ? expression.Length : num);
			string text = expression.Substring(0, length);
			obj = ((text.IndexOf('[') == -1) ? GetPropertyValue(obj, text) : GetIndexedPropertyValue(obj, text));
			if (num == -1)
			{
				break;
			}
			expression = expression.Substring(text.Length + 1);
		}
		return obj;
	}

	public static string Eval(object container, string expression, string format)
	{
		return FormatResult(Eval(container, expression), format);
	}

	public static object GetIndexedPropertyValue(object container, string expr)
	{
		if (container == null)
		{
			throw new ArgumentNullException("container");
		}
		if (expr == null || expr.Length == 0)
		{
			throw new ArgumentNullException("expr");
		}
		int num = expr.IndexOf('[');
		int num2 = expr.IndexOf(']');
		if (num < 0 || num2 < 0 || num2 - num <= 1)
		{
			throw new ArgumentException(expr + " is not a valid indexed expression.");
		}
		string text = expr.Substring(num + 1, num2 - num - 1);
		text = text.Trim();
		if (text.Length == 0)
		{
			throw new ArgumentException(expr + " is not a valid indexed expression.");
		}
		bool flag = false;
		if ((text[0] == '\'' && text[text.Length - 1] == '\'') || (text[0] == '"' && text[text.Length - 1] == '"'))
		{
			flag = true;
			text = text.Substring(1, text.Length - 2);
		}
		else
		{
			for (int i = 0; i < text.Length; i++)
			{
				if (!char.IsDigit(text[i]))
				{
					flag = true;
					break;
				}
			}
		}
		int num3 = 0;
		if (!flag)
		{
			try
			{
				num3 = int.Parse(text);
			}
			catch
			{
				throw new ArgumentException(expr + " is not a valid indexed expression.");
			}
		}
		string text2 = null;
		if (num > 0)
		{
			text2 = expr.Substring(0, num);
			if (text2 != null && text2.Length > 0)
			{
				container = GetPropertyValue(container, text2);
			}
		}
		if (container == null)
		{
			return null;
		}
		if (container is IList)
		{
			if (flag)
			{
				throw new ArgumentException(expr + " cannot be indexed with a string.");
			}
			return ((IList)container)[num3];
		}
		Type type = container.GetType();
		object[] customAttributes = type.GetCustomAttributes(typeof(DefaultMemberAttribute), inherit: false);
		text2 = ((customAttributes.Length == 1) ? ((DefaultMemberAttribute)customAttributes[0]).MemberName : "Item");
		Type[] types = new Type[1] { flag ? typeof(string) : typeof(int) };
		PropertyInfo property = type.GetProperty(text2, types);
		if (property == null)
		{
			throw new ArgumentException(expr + " indexer not found.");
		}
		object[] array = new object[1];
		if (flag)
		{
			array[0] = text;
		}
		else
		{
			array[0] = num3;
		}
		return property.GetValue(container, array);
	}

	public static string GetIndexedPropertyValue(object container, string propName, string format)
	{
		return FormatResult(GetIndexedPropertyValue(container, propName), format);
	}

	public static object GetPropertyValue(object container, string propName)
	{
		if (container == null)
		{
			throw new ArgumentNullException("container");
		}
		if (propName == null || propName.Length == 0)
		{
			throw new ArgumentNullException("propName");
		}
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(container).Find(propName, ignoreCase: true);
		if (propertyDescriptor == null)
		{
			throw new HttpException("Property " + propName + " not found in " + container.GetType());
		}
		return propertyDescriptor.GetValue(container);
	}

	public static string GetPropertyValue(object container, string propName, string format)
	{
		return FormatResult(GetPropertyValue(container, propName), format);
	}

	public static object GetDataItem(object container, out bool foundDataItem)
	{
		foundDataItem = false;
		if (container == null)
		{
			return null;
		}
		if (container is IDataItemContainer)
		{
			foundDataItem = true;
			return ((IDataItemContainer)container).DataItem;
		}
		PropertyInfo value = null;
		if (dataItemCache == null)
		{
			dataItemCache = new Dictionary<Type, PropertyInfo>();
		}
		Type type = container.GetType();
		if (!dataItemCache.TryGetValue(type, out value))
		{
			value = type.GetProperty("DataItem", BindingFlags.Instance | BindingFlags.Public);
			dataItemCache[type] = value;
		}
		if (value == null)
		{
			return null;
		}
		foundDataItem = true;
		return value.GetValue(container, null);
	}

	public static object GetDataItem(object container)
	{
		bool foundDataItem;
		return GetDataItem(container, out foundDataItem);
	}

	public static bool IsBindableType(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
