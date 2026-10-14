using System.ComponentModel;
using System.Reflection;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public static class PropertyConverter
{
	public static object EnumFromString(Type enumType, string value)
	{
		object obj = null;
		try
		{
			return Enum.Parse(enumType, value, ignoreCase: true);
		}
		catch
		{
			return null;
		}
	}

	public static string EnumToString(Type enumType, object enumValue)
	{
		return Enum.Format(enumType, enumValue, "G");
	}

	public static object ObjectFromString(Type objType, MemberInfo propertyInfo, string value)
	{
		if (objType == typeof(string))
		{
			return value;
		}
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(propertyInfo.ReflectedType).Find(propertyInfo.Name, ignoreCase: false);
		if (propertyDescriptor.Converter == null || !propertyDescriptor.Converter.CanConvertFrom(typeof(string)))
		{
			throw new HttpException(Locale.GetText("Cannot create an object of type '{0}' from its string representation '{1}' for the '{2}' property", objType, value, propertyInfo.Name));
		}
		return propertyDescriptor.Converter.ConvertFromInvariantString(value);
	}
}
