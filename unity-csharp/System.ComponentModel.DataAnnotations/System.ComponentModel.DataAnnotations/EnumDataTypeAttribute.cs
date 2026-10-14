using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public sealed class EnumDataTypeAttribute : DataTypeAttribute
{
	public Type EnumType { get; private set; }

	public EnumDataTypeAttribute(Type enumType)
		: base("Enumeration")
	{
		EnumType = enumType;
	}

	public override bool IsValid(object value)
	{
		if (EnumType == null)
		{
			throw new InvalidOperationException("The type provided for EnumDataTypeAttribute cannot be null.");
		}
		if (!EnumType.IsEnum)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The type '{0}' needs to represent an enumeration type.", EnumType.FullName));
		}
		if (value == null)
		{
			return true;
		}
		string text = value as string;
		if (text != null && string.IsNullOrEmpty(text))
		{
			return true;
		}
		Type type = value.GetType();
		if (type.IsEnum && EnumType != type)
		{
			return false;
		}
		if (!type.IsValueType && type != typeof(string))
		{
			return false;
		}
		if (type == typeof(bool) || type == typeof(float) || type == typeof(double) || type == typeof(decimal) || type == typeof(char))
		{
			return false;
		}
		object obj;
		if (type.IsEnum)
		{
			obj = value;
		}
		else
		{
			try
			{
				obj = ((text == null) ? Enum.ToObject(EnumType, value) : Enum.Parse(EnumType, text, ignoreCase: false));
			}
			catch (ArgumentException)
			{
				return false;
			}
		}
		if (IsEnumTypeInFlagsMode(EnumType))
		{
			string underlyingTypeValueString = GetUnderlyingTypeValueString(EnumType, obj);
			string value2 = obj.ToString();
			return !underlyingTypeValueString.Equals(value2);
		}
		return Enum.IsDefined(EnumType, obj);
	}

	private static bool IsEnumTypeInFlagsMode(Type enumType)
	{
		return enumType.GetCustomAttributes(typeof(FlagsAttribute), inherit: false).Length != 0;
	}

	private static string GetUnderlyingTypeValueString(Type enumType, object enumValue)
	{
		return Convert.ChangeType(enumValue, Enum.GetUnderlyingType(enumType), CultureInfo.InvariantCulture).ToString();
	}
}
