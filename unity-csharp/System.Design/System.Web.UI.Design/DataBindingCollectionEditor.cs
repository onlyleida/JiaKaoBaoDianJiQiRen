using System.ComponentModel;
using System.Drawing.Design;

namespace System.Web.UI.Design;

[Obsolete("This class is not supposed to be in use anymore as DesignerActionList is supposed to be used for editing DataBinding")]
public class DataBindingCollectionEditor : UITypeEditor
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
}
