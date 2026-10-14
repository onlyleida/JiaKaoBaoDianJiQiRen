using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;

namespace System.Windows.Forms.Design;

[ProvideProperty("Location", typeof(IComponent))]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class ComponentTray : ScrollableControl, IExtenderProvider
{
	private IServiceProvider _serviceProvider;

	private IDesigner _mainDesigner;

	private bool _showLargeIcons;

	private bool _autoArrange;

	public bool AutoArrange
	{
		get
		{
			return _autoArrange;
		}
		set
		{
			_autoArrange = value;
		}
	}

	[System.MonoTODO]
	public int ComponentCount => 0;

	public bool ShowLargeIcons
	{
		get
		{
			return _showLargeIcons;
		}
		set
		{
			_showLargeIcons = value;
		}
	}

	public ComponentTray(IDesigner mainDesigner, IServiceProvider serviceProvider)
	{
		if (mainDesigner == null)
		{
			throw new ArgumentNullException("mainDesigner");
		}
		if (serviceProvider == null)
		{
			throw new ArgumentNullException("serviceProvider");
		}
		_mainDesigner = mainDesigner;
		_serviceProvider = serviceProvider;
	}

	[System.MonoTODO]
	public virtual void AddComponent(IComponent component)
	{
	}

	protected virtual bool CanCreateComponentFromTool(ToolboxItem tool)
	{
		return true;
	}

	protected virtual bool CanDisplayComponent(IComponent component)
	{
		return false;
	}

	[System.MonoTODO]
	public void CreateComponentFromTool(ToolboxItem tool)
	{
	}

	[System.MonoTODO]
	protected void DisplayError(Exception e)
	{
	}

	protected override void Dispose(bool disposing)
	{
	}

	[Browsable(false)]
	[Category("Layout")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DesignOnly(true)]
	[Localizable(false)]
	[System.MonoTODO]
	public Point GetLocation(IComponent receiver)
	{
		return new Point(0, 0);
	}

	[System.MonoTODO]
	public void SetLocation(IComponent receiver, Point location)
	{
	}

	[System.MonoTODO]
	public IComponent GetNextComponent(IComponent component, bool forward)
	{
		throw new NotImplementedException();
	}

	[Localizable(false)]
	[DesignOnly(true)]
	[Category("Layout")]
	[System.MonoTODO]
	[Browsable(false)]
	public Point GetTrayLocation(IComponent receiver)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public bool IsTrayComponent(IComponent comp)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void SetTrayLocation(IComponent receiver, Point location)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected override void OnMouseDoubleClick(MouseEventArgs e)
	{
	}

	[System.MonoTODO]
	protected override void OnDragDrop(DragEventArgs de)
	{
	}

	[System.MonoTODO]
	protected override void OnDragEnter(DragEventArgs de)
	{
	}

	[System.MonoTODO]
	protected override void OnDragLeave(EventArgs e)
	{
	}

	[System.MonoTODO]
	protected override void OnDragOver(DragEventArgs de)
	{
	}

	[System.MonoTODO]
	protected override void OnGiveFeedback(GiveFeedbackEventArgs gfevent)
	{
	}

	[System.MonoTODO]
	protected override void OnLayout(LayoutEventArgs levent)
	{
	}

	[System.MonoTODO]
	protected virtual void OnLostCapture()
	{
	}

	[System.MonoTODO]
	protected override void OnMouseDown(MouseEventArgs e)
	{
	}

	[System.MonoTODO]
	protected override void OnMouseMove(MouseEventArgs e)
	{
	}

	[System.MonoTODO]
	protected override void OnMouseUp(MouseEventArgs e)
	{
	}

	[System.MonoTODO]
	protected override void OnPaint(PaintEventArgs pe)
	{
	}

	[System.MonoTODO]
	protected virtual void OnSetCursor()
	{
	}

	[System.MonoTODO]
	public virtual void RemoveComponent(IComponent component)
	{
	}

	[System.MonoTODO]
	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
	}

	bool IExtenderProvider.CanExtend(object component)
	{
		return false;
	}

	protected override object GetService(Type serviceType)
	{
		if (_serviceProvider != null)
		{
			return _serviceProvider.GetService(serviceType);
		}
		return null;
	}
}
