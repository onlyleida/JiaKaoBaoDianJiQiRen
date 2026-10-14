using System.ComponentModel;
using System.Drawing.Design;

namespace System.Windows.Forms.Design;

public sealed class AnchorEditor : UITypeEditor
{
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		IWindowsFormsEditorService windowsFormsEditorService = null;
		if (provider != null)
		{
			windowsFormsEditorService = provider.GetService(typeof(IWindowsFormsEditorService)) as IWindowsFormsEditorService;
		}
		if (windowsFormsEditorService != null)
		{
			AnchorSelector anchorSelector = new AnchorSelector(windowsFormsEditorService, (AnchorStyles)value);
			windowsFormsEditorService.DropDownControl(anchorSelector);
			value = anchorSelector.AnchorStyles;
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}
}
