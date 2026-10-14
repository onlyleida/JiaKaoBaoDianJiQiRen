using System.ComponentModel;
using System.Globalization;

namespace System.Web.Configuration;

public sealed class LowerCaseStringConverter : TypeConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext ctx, Type type)
	{
		return type == typeof(string);
	}

	public override bool CanConvertTo(ITypeDescriptorContext ctx, Type type)
	{
		return type == typeof(string);
	}

	public override object ConvertFrom(ITypeDescriptorContext ctx, CultureInfo ci, object data)
	{
		return ((string)data).ToLowerInvariant();
	}

	public override object ConvertTo(ITypeDescriptorContext ctx, CultureInfo ci, object value, Type type)
	{
		if (value == null)
		{
			return "";
		}
		if (!(value is string))
		{
			throw new ArgumentException("value");
		}
		return ((string)value).ToLowerInvariant();
	}
}
