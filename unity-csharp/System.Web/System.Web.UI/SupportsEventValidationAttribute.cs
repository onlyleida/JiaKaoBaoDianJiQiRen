using System.Collections;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public sealed class SupportsEventValidationAttribute : Attribute
{
	private static Hashtable _typesSupportsEventValidation;

	static SupportsEventValidationAttribute()
	{
		_typesSupportsEventValidation = Hashtable.Synchronized(new Hashtable());
	}

	internal static bool SupportsEventValidation(Type type)
	{
		object obj = _typesSupportsEventValidation[type];
		if (obj != null)
		{
			return (bool)obj;
		}
		object[] customAttributes = type.GetCustomAttributes(typeof(SupportsEventValidationAttribute), inherit: false);
		bool flag = customAttributes != null && customAttributes.Length != 0;
		_typesSupportsEventValidation[type] = flag;
		return flag;
	}
}
