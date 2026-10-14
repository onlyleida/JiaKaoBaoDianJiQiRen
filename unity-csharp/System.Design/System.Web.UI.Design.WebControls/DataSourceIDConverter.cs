using System.ComponentModel;
using System.Globalization;

namespace System.Web.UI.Design.WebControls;

public class DataSourceIDConverter : TypeConverter
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
		if (value is string)
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
		return true;
	}

	protected virtual bool IsValidDataSource(IComponent component)
	{
		if (component == null)
		{
			return false;
		}
		return component is IDataSource;
	}
}
