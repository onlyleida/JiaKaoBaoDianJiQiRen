using System.ComponentModel;
using System.Windows.Forms;

namespace System.Drawing.Design;

public class FontEditor : UITypeEditor
{
	private FontDialog fontEdit;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		fontEdit = new FontDialog();
		if (value is Font)
		{
			fontEdit.Font = (Font)value;
		}
		else
		{
			fontEdit.Font = new Font(FontFamily.GenericSansSerif, 12f);
		}
		fontEdit.FontMustExist = true;
		if (fontEdit.ShowDialog() == DialogResult.OK)
		{
			return fontEdit.Font;
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}
}
