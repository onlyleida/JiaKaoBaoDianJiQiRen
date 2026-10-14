namespace UnityEngine.UIElements;

public class DragLeaveEvent : DragAndDropEventBase<DragLeaveEvent>
{
	protected override void Init()
	{
		base.Init();
		LocalInit();
	}

	private void LocalInit()
	{
		propagation = EventPropagation.TricklesDown;
	}

	public DragLeaveEvent()
	{
		LocalInit();
	}
}
