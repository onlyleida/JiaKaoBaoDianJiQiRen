namespace System.Web.Hosting;

public interface ISuspendibleRegisteredObject : IRegisteredObject
{
	Action Suspend();
}
