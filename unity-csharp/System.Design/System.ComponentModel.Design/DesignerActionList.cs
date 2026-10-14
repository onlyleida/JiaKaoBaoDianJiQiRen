namespace System.ComponentModel.Design;

public class DesignerActionList
{
	private IComponent component;

	private bool auto_show;

	private DesignerActionItemCollection action_items;

	public virtual bool AutoShow
	{
		get
		{
			return auto_show;
		}
		set
		{
			auto_show = value;
		}
	}

	public IComponent Component => component;

	public DesignerActionList(IComponent component)
	{
		this.component = component;
		action_items = new DesignerActionItemCollection();
	}

	public object GetService(Type serviceType)
	{
		return null;
	}

	public virtual DesignerActionItemCollection GetSortedActionItems()
	{
		return action_items;
	}
}
