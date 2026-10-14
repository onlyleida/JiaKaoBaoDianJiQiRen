namespace System.Web.UI.WebControls;

public interface IPostBackContainer
{
	PostBackOptions GetPostBackOptions(IButtonControl buttonControl);
}
