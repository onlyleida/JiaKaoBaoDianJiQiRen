using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class ControlPropertyNameConverter : StringConverter
{
	[MonoLimitation("This implementation always returns null")]
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		return null;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		if (context != null)
		{
			return true;
		}
		return false;
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}
}
