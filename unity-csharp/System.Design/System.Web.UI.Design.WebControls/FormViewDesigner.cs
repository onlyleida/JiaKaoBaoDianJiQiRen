using Unity;

namespace System.Web.UI.Design.WebControls;

public class FormViewDesigner : DataBoundControlDesigner
{
	public bool RenderOuterTable
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public FormViewDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
