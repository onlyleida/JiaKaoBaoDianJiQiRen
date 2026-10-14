namespace UnityEngine.UIElements;

public sealed class PointerMoveEvent : PointerEventBase<PointerMoveEvent>
{
	protected override void Init()
	{
		base.Init();
		LocalInit();
	}

	private void LocalInit()
	{
		((IPointerEventInternal)this).recomputeTopElementUnderPointer = true;
	}

	public PointerMoveEvent()
	{
		LocalInit();
	}

	protected internal override void PostDispatch(IPanel panel)
	{
		if (panel.ShouldSendCompatibilityMouseEvents(this))
		{
			if (imguiEvent != null && imguiEvent.rawType == EventType.MouseDown)
			{
				using MouseDownEvent mouseDownEvent = MouseDownEvent.GetPooled(this);
				mouseDownEvent.target = target;
				mouseDownEvent.target.SendEvent(mouseDownEvent);
			}
			else if (imguiEvent != null && imguiEvent.rawType == EventType.MouseUp)
			{
				using MouseUpEvent mouseUpEvent = MouseUpEvent.GetPooled(this);
				mouseUpEvent.target = target;
				mouseUpEvent.target.SendEvent(mouseUpEvent);
			}
			else
			{
				using MouseMoveEvent mouseMoveEvent = MouseMoveEvent.GetPooled(this);
				mouseMoveEvent.target = target;
				mouseMoveEvent.target.SendEvent(mouseMoveEvent);
			}
		}
		base.PostDispatch(panel);
	}
}
