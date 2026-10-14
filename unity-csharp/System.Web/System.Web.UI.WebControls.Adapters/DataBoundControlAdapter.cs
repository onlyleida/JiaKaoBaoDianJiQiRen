using System.Collections;

namespace System.Web.UI.WebControls.Adapters;

public class DataBoundControlAdapter : WebControlAdapter
{
	protected new DataBoundControl Control => (DataBoundControl)control;

	public DataBoundControlAdapter()
	{
	}

	internal DataBoundControlAdapter(DataBoundControl c)
		: base(c)
	{
	}

	protected internal virtual void PerformDataBinding(IEnumerable data)
	{
		Control.PerformDataBinding(data);
	}
}
