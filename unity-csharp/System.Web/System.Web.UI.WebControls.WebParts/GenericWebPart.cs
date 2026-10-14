using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[ToolboxItem(false)]
public class GenericWebPart : WebPart
{
	public Control ChildControl
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override object WebBrowsableObject
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal GenericWebPart(Control control)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override EditorPartCollection CreateEditorParts()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
