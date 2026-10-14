using System.ComponentModel;
using System.Globalization;

namespace System.Web.UI.Design;

public class DataSourceConverter : TypeConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		return sourceType == typeof(string);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value == null)
		{
			return string.Empty;
		}
		if (value.GetType() == typeof(string))
		{
			return (string)value;
		}
		throw GetConvertFromException(value);
	}

	[System.MonoTODO]
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return context.Instance is IComponent;
	}

	[System.MonoTODO]
	protected virtual bool IsValidDataSource(IComponent component)
	{
		throw new NotImplementedException();
	}
}
