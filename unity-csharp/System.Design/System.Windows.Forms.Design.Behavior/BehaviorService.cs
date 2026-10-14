using System.Drawing;

namespace System.Windows.Forms.Design.Behavior;

public sealed class BehaviorService : IDisposable
{
	[System.MonoTODO]
	public BehaviorServiceAdornerCollection Adorners
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public Graphics AdornerWindowGraphics
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public Behavior CurrentBehavior
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public event BehaviorDragDropEventHandler BeginDrag;

	public event BehaviorDragDropEventHandler EndDrag;

	public event EventHandler Synchronize;

	internal BehaviorService()
	{
	}

	[System.MonoTODO]
	public Point AdornerWindowPointToScreen(Point p)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Point AdornerWindowToScreen()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Rectangle ControlRectInAdornerWindow(Control c)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Point ControlToAdornerWindow(Control c)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Dispose()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Behavior GetNextBehavior(Behavior behavior)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Invalidate()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Invalidate(Rectangle rect)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Invalidate(Region r)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Point MapAdornerWindowPoint(IntPtr handle, Point pt)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Behavior PopBehavior(Behavior behavior)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void PushBehavior(Behavior behavior)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void PushCaptureBehavior(Behavior behavior)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public Point ScreenToAdornerWindow(Point p)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void SyncSelection()
	{
		throw new NotImplementedException();
	}
}
