using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.ComponentModel.Design;

public sealed class MultilineStringEditor : UITypeEditor
{
	private class EditorControl : TextBox
	{
		public EditorControl()
		{
			Multiline = true;
			AcceptsReturn = true;
			Height = 135;
			Width = 280;
			ScrollBars = ScrollBars.Both;
			WordWrap = false;
			BorderStyle = BorderStyle.FixedSingle;
		}
	}

	private IWindowsFormsEditorService editorService;

	private EditorControl control = new EditorControl();

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && provider != null)
		{
			editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (editorService != null)
			{
				if (value == null)
				{
					value = string.Empty;
				}
				else if (!(value is string))
				{
					return value;
				}
				control.Text = (string)value;
				editorService.DropDownControl(control);
				return control.Text;
			}
		}
		return base.EditValue(context, provider, value);
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return false;
	}
}
