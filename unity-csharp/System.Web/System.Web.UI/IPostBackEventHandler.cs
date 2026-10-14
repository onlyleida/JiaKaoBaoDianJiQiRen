namespace System.Web.UI;

public interface IPostBackEventHandler
{
	void RaisePostBackEvent(string eventArgument);
}
