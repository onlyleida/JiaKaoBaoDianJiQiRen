namespace System.Web.UI.WebControls.Adapters;

public class HierarchicalDataBoundControlAdapter : WebControlAdapter
{
	protected new HierarchicalDataBoundControl Control => (HierarchicalDataBoundControl)control;

	public HierarchicalDataBoundControlAdapter()
	{
	}

	internal HierarchicalDataBoundControlAdapter(HierarchicalDataBoundControl c)
		: base(c)
	{
	}

	protected internal virtual void PerformDataBinding()
	{
		Control.PerformDataBinding();
	}
}
