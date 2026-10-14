namespace System.Web.UI.WebControls;

public interface ICallbackContainer
{
	string GetCallbackScript(IButtonControl buttonControl, string argument);
}
