namespace System.Threading.Tasks;

internal static class GenericDelegateCache<TAntecedentResult, TResult>
{
	internal static Func<Task<Task>, object, TResult> CWAnyFuncDelegate = (Task<Task> wrappedWinner, object state) =>
	{
		Func<Task<TAntecedentResult>, TResult> func = (Func<Task<TAntecedentResult>, TResult>)state;
		Task<TAntecedentResult> arg = (Task<TAntecedentResult>)wrappedWinner.Result;
		return func(arg);
	};

	internal static Func<Task<Task>, object, TResult> CWAnyActionDelegate = (Task<Task> wrappedWinner, object state) =>
	{
		Action<Task<TAntecedentResult>> action = (Action<Task<TAntecedentResult>>)state;
		Task<TAntecedentResult> obj = (Task<TAntecedentResult>)wrappedWinner.Result;
		action(obj);
		return default;
	};

	internal static Func<Task<Task<TAntecedentResult>[]>, object, TResult> CWAllFuncDelegate = (Task<Task<TAntecedentResult>[]> wrappedAntecedents, object state) =>
	{
		wrappedAntecedents.NotifyDebuggerOfWaitCompletionIfNecessary();
		return ((Func<Task<TAntecedentResult>[], TResult>)state)(wrappedAntecedents.Result);
	};

	internal static Func<Task<Task<TAntecedentResult>[]>, object, TResult> CWAllActionDelegate = (Task<Task<TAntecedentResult>[]> wrappedAntecedents, object state) =>
	{
		wrappedAntecedents.NotifyDebuggerOfWaitCompletionIfNecessary();
		((Action<Task<TAntecedentResult>[]>)state)(wrappedAntecedents.Result);
		return default;
	};
}
