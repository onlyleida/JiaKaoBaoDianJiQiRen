using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ValidatedControlConverter : ControlIDConverter
{
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		if (context != null && context.Container != null && context.Container.Components != null)
		{
			ArrayList arrayList = new ArrayList();
			ComponentCollection components = context.Container.Components;
			int count = components.Count;
			for (int i = 0; i < count; i++)
			{
				if (FilterControl((Control)components[i]))
				{
					string iD = ((Control)components[i]).ID;
					if (iD != null && iD.Length > 0)
					{
						arrayList.Add(iD);
					}
				}
			}
			arrayList.Sort();
			if (arrayList.Count > 0)
			{
				return new StandardValuesCollection(arrayList);
			}
			return null;
		}
		return base.GetStandardValues(context);
	}

	protected override bool FilterControl(Control control)
	{
		return BaseValidator.GetValidationProperty(control) != null;
	}
}
