using System.Collections;

namespace System.ComponentModel.Design;

internal sealed class DesignerEventService : IDesignerEventService
{
	private ArrayList _designerList;

	private IDesignerHost _activeDesigner;

	public IDesignerHost ActiveDesigner
	{
		get
		{
			return _activeDesigner;
		}
		internal set
		{
			IDesignerHost activeDesigner = _activeDesigner;
			_activeDesigner = value;
			if (ActiveDesignerChanged != null)
			{
				ActiveDesignerChanged(this, new ActiveDesignerEventArgs(activeDesigner, value));
			}
		}
	}

	public DesignerCollection Designers => new DesignerCollection(_designerList);

	public event ActiveDesignerEventHandler ActiveDesignerChanged;

	public event DesignerEventHandler DesignerCreated;

	public event DesignerEventHandler DesignerDisposed;

	public event EventHandler SelectionChanged;

	public DesignerEventService()
	{
		_designerList = new ArrayList();
	}

	public void RaiseDesignerCreated(IDesignerHost host)
	{
		if (DesignerCreated != null)
		{
			DesignerCreated(this, new DesignerEventArgs(host));
		}
	}

	public void RaiseDesignerDisposed(IDesignerHost host)
	{
		if (DesignerDisposed != null)
		{
			DesignerDisposed(this, new DesignerEventArgs(host));
		}
	}

	public void RaiseSelectionChanged()
	{
		if (SelectionChanged != null)
		{
			SelectionChanged(this, EventArgs.Empty);
		}
	}
}
