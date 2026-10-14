namespace System.Web;

public enum ProcessShutdownReason
{
	None,
	Unexpected,
	RequestsLimit,
	RequestQueueLimit,
	Timeout,
	IdleTimeout,
	MemoryLimitExceeded,
	PingFailed,
	DeadlockSuspected
}
