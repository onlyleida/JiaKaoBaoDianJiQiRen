namespace UnityEngine.UIElements;

public class FocusInEvent : FocusEventBase<FocusInEvent>
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

	public FocusInEvent()
	{
		LocalInit();
	}
}
