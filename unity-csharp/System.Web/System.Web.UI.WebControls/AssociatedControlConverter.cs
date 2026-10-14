namespace System.Web.UI.WebControls;

public class AssociatedControlConverter : ControlIDConverter
{
	protected override bool FilterControl(Control control)
	{
		if (control is WebControl)
		{
			return true;
		}
		return false;
	}
}
