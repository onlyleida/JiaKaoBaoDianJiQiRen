using System.ComponentModel;
using System.Globalization;
using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class DataColumnSelectionConverter : TypeConverter
{
	[System.MonoTODO]
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}
}
