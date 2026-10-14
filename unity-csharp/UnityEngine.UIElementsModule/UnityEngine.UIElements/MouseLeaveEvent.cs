namespace UnityEngine.UIElements;

public class MouseLeaveEvent : MouseEventBase<MouseLeaveEvent>
{
	protected override void Init()
	{
		base.Init();
		LocalInit();
	}

	private void LocalInit()
	{
		propagation = EventPropagation.TricklesDown | EventPropagation.Cancellable;
	}

	public MouseLeaveEvent()
	{
		LocalInit();
	}
}
