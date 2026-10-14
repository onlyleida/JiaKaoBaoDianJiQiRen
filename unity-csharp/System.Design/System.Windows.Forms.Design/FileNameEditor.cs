using System.ComponentModel;
using System.Drawing.Design;

namespace System.Windows.Forms.Design;

public class FileNameEditor : UITypeEditor
{
	[System.MonoTODO]
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		throw new NotImplementedException();
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	[System.MonoTODO]
	protected virtual void InitializeDialog(OpenFileDialog openFileDialog)
	{
		throw new NotImplementedException();
	}
}
