using System.ComponentModel;

namespace System.Web.UI;

[EditorBrowsable(EditorBrowsableState.Advanced)]
public class ControlSkin
{
	private Type controlType;

	private ControlSkinDelegate themeDelegate;

	public Type ControlType => controlType;

	public ControlSkin(Type controlType, ControlSkinDelegate themeDelegate)
	{
		this.controlType = controlType;
		this.themeDelegate = themeDelegate;
	}

	public void ApplySkin(Control control)
	{
		themeDelegate(control);
	}
}
