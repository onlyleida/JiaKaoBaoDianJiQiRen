using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.Web.UI.Design.WebControls;

public abstract class BaseDataListComponentEditor : WindowsFormsComponentEditor
{
	private int initial_page;

	public BaseDataListComponentEditor(int initialPage)
	{
		initial_page = initialPage;
	}

	public override bool EditComponent(ITypeDescriptorContext context, object obj, IWin32Window parent)
	{
		throw new NotImplementedException();
	}

	protected override int GetInitialComponentEditorPageIndex()
	{
		return initial_page;
	}
}
