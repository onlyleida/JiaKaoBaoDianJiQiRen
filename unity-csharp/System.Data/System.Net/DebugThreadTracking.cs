using System.Collections.Generic;

namespace System.Net;

internal static class DebugThreadTracking
{
	private class ThreadKindFrame : IDisposable
	{
		private readonly int _frameNumber;

		internal ThreadKindFrame()
		{
			_frameNumber = ThreadKindStack.Count;
		}

		void IDisposable.Dispose()
		{
			if (!Environment.HasShutdownStarted)
			{
				if (_frameNumber != ThreadKindStack.Count)
				{
					throw new InternalException();
				}
				ThreadKinds threadKinds = ThreadKindStack.Pop();
				if (CurrentThreadKind != threadKinds && NetEventSource.IsEnabled && NetEventSource.IsEnabled)
				{
					NetEventSource.Info(this, $"Thread reverts:({CurrentThreadKind})", "Dispose");
				}
			}
		}
	}

	[ThreadStatic]
	private static Stack<ThreadKinds> t_threadKindStack;

	private static Stack<ThreadKinds> ThreadKindStack => t_threadKindStack ?? (t_threadKindStack = new Stack<ThreadKinds>());

	internal static ThreadKinds CurrentThreadKind
	{
		get
		{
			if (ThreadKindStack.Count <= 0)
			{
				return ThreadKinds.Other;
			}
			return ThreadKindStack.Peek();
		}
	}

	internal static IDisposable SetThreadKind(ThreadKinds kind)
	{
		if ((kind & ThreadKinds.SourceMask) != 0)
		{
			throw new InternalException();
		}
		if (Environment.HasShutdownStarted)
		{
			return null;
		}
		ThreadKinds currentThreadKind = CurrentThreadKind;
		ThreadKinds threadKinds = currentThreadKind & ThreadKinds.SourceMask;
		if ((currentThreadKind & ThreadKinds.User) != 0 && (kind & ThreadKinds.System) != 0 && NetEventSource.IsEnabled)
		{
			NetEventSource.Error(null, "Thread changed from User to System; user's thread shouldn't be hijacked.", "SetThreadKind");
		}
		if ((currentThreadKind & ThreadKinds.Async) != 0 && (kind & ThreadKinds.Sync) != 0)
		{
			if (NetEventSource.IsEnabled)
			{
				NetEventSource.Error(null, "Thread changed from Async to Sync, may block an Async thread.", "SetThreadKind");
			}
		}
		else if ((currentThreadKind & (ThreadKinds.CompletionPort | ThreadKinds.Other)) == 0 && (kind & ThreadKinds.Sync) != 0 && NetEventSource.IsEnabled)
		{
			NetEventSource.Error(null, "Thread from a limited resource changed to Sync, may deadlock or bottleneck.", "SetThreadKind");
		}
		ThreadKindStack.Push(((((kind & ThreadKinds.OwnerMask) == 0) ? currentThreadKind : kind) & ThreadKinds.OwnerMask) | ((((kind & ThreadKinds.SyncMask) == 0) ? currentThreadKind : kind) & ThreadKinds.SyncMask) | (kind & ~(ThreadKinds.OwnerMask | ThreadKinds.SyncMask)) | threadKinds);
		if (CurrentThreadKind != currentThreadKind && NetEventSource.IsEnabled)
		{
			NetEventSource.Info(null, $"Thread becomes:({CurrentThreadKind})", "SetThreadKind");
		}
		return new ThreadKindFrame();
	}

	internal static void SetThreadSource(ThreadKinds source)
	{
		if ((source & ThreadKinds.SourceMask) != source || source == ThreadKinds.Unknown)
		{
			throw new ArgumentException("Must specify the thread source.", "source");
		}
		if (ThreadKindStack.Count == 0)
		{
			ThreadKindStack.Push(source);
			return;
		}
		if (ThreadKindStack.Count > 1)
		{
			if (NetEventSource.IsEnabled)
			{
				NetEventSource.Error(null, "SetThreadSource must be called at the base of the stack, or the stack has been corrupted.", "SetThreadSource");
			}
			while (ThreadKindStack.Count > 1)
			{
				ThreadKindStack.Pop();
			}
		}
		if (ThreadKindStack.Peek() != source)
		{
			if (NetEventSource.IsEnabled)
			{
				NetEventSource.Error(null, "The stack has been corrupted.", "SetThreadSource");
			}
			ThreadKinds threadKinds = ThreadKindStack.Pop() & ThreadKinds.SourceMask;
			if (threadKinds != source && threadKinds != ThreadKinds.Other && NetEventSource.IsEnabled)
			{
				NetEventSource.Fail(null, $"Thread source changed.|Was:({threadKinds}) Now:({source})", "SetThreadSource");
			}
			ThreadKindStack.Push(source);
		}
	}
}
