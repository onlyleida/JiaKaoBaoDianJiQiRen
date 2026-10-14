using System.ComponentModel;
using System.Drawing.Design;

namespace System.Web.UI.Design;

public class UrlEditor : UITypeEditor
{
	protected virtual string Caption => "Select URL";

	protected virtual string Filter => "All Files(*.*)|*.*|";

	protected virtual UrlBuilderOptions Options => UrlBuilderOptions.None;

	[System.MonoTODO]
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}
}
