namespace System.Threading;

public struct AsyncLocalValueChangedArgs<T>
{
	public T PreviousValue { get; private set; }

	public T CurrentValue { get; private set; }

	public bool ThreadContextChanged { get; private set; }

	internal AsyncLocalValueChangedArgs(T previousValue, T currentValue, bool contextChanged)
	{
		this = default;
		PreviousValue = previousValue;
		CurrentValue = currentValue;
		ThreadContextChanged = contextChanged;
	}
}
