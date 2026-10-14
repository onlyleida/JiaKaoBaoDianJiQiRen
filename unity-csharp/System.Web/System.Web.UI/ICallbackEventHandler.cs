namespace System.Web.UI;

public interface ICallbackEventHandler
{
	void RaiseCallbackEvent(string eventArgument);

	string GetCallbackResult();
}
