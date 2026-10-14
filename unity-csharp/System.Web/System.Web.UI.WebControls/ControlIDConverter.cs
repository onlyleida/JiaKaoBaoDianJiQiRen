using System.Collections;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class ControlIDConverter : StringConverter
{
	protected virtual bool FilterControl(Control control)
	{
		return true;
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		if (context == null)
		{
			return null;
		}
		IContainer container = context.Container;
		if (container == null)
		{
			return null;
		}
		ComponentCollection components = container.Components;
		ArrayList arrayList = new ArrayList(0);
		foreach (Control item in components)
		{
			if (FilterControl(item))
			{
				arrayList.Add(item.ID);
			}
		}
		return new StandardValuesCollection(arrayList);
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		if (context == null)
		{
			return false;
		}
		return true;
	}
}
