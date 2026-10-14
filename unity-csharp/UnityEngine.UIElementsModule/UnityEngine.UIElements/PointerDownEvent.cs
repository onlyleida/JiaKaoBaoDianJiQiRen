namespace UnityEngine.UIElements;

public sealed class PointerDownEvent : PointerEventBase<PointerDownEvent>
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

	public PointerDownEvent()
	{
		LocalInit();
	}

	protected internal override void PostDispatch(IPanel panel)
	{
		if (!isDefaultPrevented)
		{
			if (panel.ShouldSendCompatibilityMouseEvents(this))
			{
				using MouseDownEvent mouseDownEvent = MouseDownEvent.GetPooled(this);
				mouseDownEvent.target = target;
				mouseDownEvent.target.SendEvent(mouseDownEvent);
			}
		}
		else
		{
			panel.PreventCompatibilityMouseEvents(pointerId);
		}
		base.PostDispatch(panel);
	}
}
