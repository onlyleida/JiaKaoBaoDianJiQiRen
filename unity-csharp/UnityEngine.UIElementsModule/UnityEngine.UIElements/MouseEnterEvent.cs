namespace UnityEngine.UIElements;

public class MouseEnterEvent : MouseEventBase<MouseEnterEvent>
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

	public MouseEnterEvent()
	{
		LocalInit();
	}
}
