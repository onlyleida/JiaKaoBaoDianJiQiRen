using System.ComponentModel.Design;

namespace System.Web.UI.Design;

public abstract class DataBindingHandler
{
	public abstract void DataBindControl(IDesignerHost designerHost, Control control);
}
