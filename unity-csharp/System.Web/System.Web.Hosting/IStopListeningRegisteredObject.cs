namespace System.Web.Hosting;

public interface IStopListeningRegisteredObject : IRegisteredObject
{
	void StopListening();
}
