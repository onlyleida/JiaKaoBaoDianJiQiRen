using System.ComponentModel;
using System.Globalization;

namespace System.Web.UI.WebControls;

public class StringArrayConverter : TypeConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(string))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value == null)
		{
			return null;
		}
		if (value is string)
		{
			return ((string)value).Split(',');
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (value is string[] && destinationType == typeof(string))
		{
			return string.Join(",", (string[])value);
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
