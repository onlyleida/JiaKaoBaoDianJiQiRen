namespace UnityEngine.UIElements;

public class FocusOutEvent : FocusEventBase<FocusOutEvent>
{
	protected override void Init()
	{
		base.Init();
		LocalInit();
	}

	private void LocalInit()
	{
		propagation = EventPropagation.Bubbles | EventPropagation.TricklesDown;
	}

	public FocusOutEvent()
	{
		LocalInit();
	}
}
