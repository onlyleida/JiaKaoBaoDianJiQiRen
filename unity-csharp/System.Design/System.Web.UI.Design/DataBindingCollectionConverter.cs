using System.ComponentModel;
using System.Globalization;

namespace System.Web.UI.Design;

[Obsolete("This class is not supposed to be in use anymore as DesignerActionList is supposed to be used for editing DataBinding")]
public class DataBindingCollectionConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(string))
		{
			return string.Empty;
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
