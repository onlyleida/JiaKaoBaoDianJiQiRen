using System.ComponentModel;
using System.Windows.Forms;

namespace System.Web.UI.Design.WebControls;

public class DataListComponentEditor : BaseDataListComponentEditor
{
	public DataListComponentEditor()
		: base(0)
	{
	}

	public DataListComponentEditor(int initialPage)
		: base(initialPage)
	{
	}

	public override bool EditComponent(ITypeDescriptorContext context, object obj, IWin32Window parent)
	{
		throw new NotImplementedException();
	}

	protected override Type[] GetComponentEditorPages()
	{
		throw new NotImplementedException();
	}
}
