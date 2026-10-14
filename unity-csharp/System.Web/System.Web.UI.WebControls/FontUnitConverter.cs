using System.Collections;
using System.ComponentModel;
using System.Globalization;

namespace System.Web.UI.WebControls;

public class FontUnitConverter : TypeConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(string))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(string))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value == null || !(value is string))
		{
			return base.ConvertFrom(context, culture, value);
		}
		string text = (string)value;
		if (culture == null)
		{
			culture = CultureInfo.CurrentCulture;
		}
		if (text == "")
		{
			return FontUnit.Empty;
		}
		return FontUnit.Parse(text, culture);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (value == null || !(value is FontUnit) || destinationType != typeof(string))
		{
			return base.ConvertTo(context, culture, value, destinationType);
		}
		if (culture == null)
		{
			culture = CultureInfo.CurrentCulture;
		}
		return ((FontUnit)value).ToString(culture);
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(FontUnit));
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < properties.Count; i++)
		{
			arrayList.Add(properties[i].GetValue(null));
		}
		return new StandardValuesCollection(arrayList);
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
