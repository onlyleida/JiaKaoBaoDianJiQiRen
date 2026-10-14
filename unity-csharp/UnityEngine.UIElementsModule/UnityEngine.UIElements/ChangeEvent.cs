namespace UnityEngine.UIElements;

public class ChangeEvent<T> : EventBase<ChangeEvent<T>>, IChangeEvent
{
	public T previousValue { get; protected set; }

	public T newValue { get; protected set; }

	protected override void Init()
	{
		base.Init();
		LocalInit();
	}

	private void LocalInit()
	{
		propagation = EventPropagation.Bubbles | EventPropagation.TricklesDown;
		previousValue = default;
		newValue = default;
	}

	public static ChangeEvent<T> GetPooled(T previousValue, T newValue)
	{
		ChangeEvent<T> changeEvent = EventBase<ChangeEvent<T>>.GetPooled();
		changeEvent.previousValue = previousValue;
		changeEvent.newValue = newValue;
		return changeEvent;
	}

	public ChangeEvent()
	{
		LocalInit();
	}
}
