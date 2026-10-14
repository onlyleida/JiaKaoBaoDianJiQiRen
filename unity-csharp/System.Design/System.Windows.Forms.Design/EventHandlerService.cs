namespace System.Windows.Forms.Design;

public sealed class EventHandlerService
{
	private readonly Control _focusWnd;

	public Control FocusWindow => _focusWnd;

	public event EventHandler EventHandlerChanged;

	public EventHandlerService(Control focusWnd)
	{
		_focusWnd = focusWnd;
	}

	[System.MonoTODO]
	public object GetHandler(Type handlerType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void PopHandler(object handler)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void PushHandler(object handler)
	{
		throw new NotImplementedException();
	}
}
