using System.ComponentModel;

namespace System.Diagnostics;

internal sealed class AlphabeticalEnumConverter : EnumConverter
{
	public AlphabeticalEnumConverter(Type type)
		: base(type)
	{
	}

	[MonoTODO("Create sorted standart values")]
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		return Values;
	}
}
