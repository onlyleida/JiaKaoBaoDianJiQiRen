using System.ComponentModel;
using System.Globalization;

namespace System.Diagnostics.Design;

public class LogConverter : TypeConverter
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
		if (value is string)
		{
			return ((string)value).Trim();
		}
		return base.ConvertFrom(context, culture, value);
	}

	[System.MonoTODO]
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
