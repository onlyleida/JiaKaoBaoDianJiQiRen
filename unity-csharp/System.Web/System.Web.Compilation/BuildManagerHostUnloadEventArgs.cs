namespace System.Web.Compilation;

public class BuildManagerHostUnloadEventArgs : EventArgs
{
	private ApplicationShutdownReason reason;

	public ApplicationShutdownReason Reason => reason;

	public BuildManagerHostUnloadEventArgs(ApplicationShutdownReason reason)
	{
		this.reason = reason;
	}
}
