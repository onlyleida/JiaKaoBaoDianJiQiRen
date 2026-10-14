namespace System.Web.UI.WebControls;

public interface IButtonControl
{
	bool CausesValidation { get; set; }

	string CommandArgument { get; set; }

	string CommandName { get; set; }

	string PostBackUrl { get; set; }

	string Text { get; set; }

	string ValidationGroup { get; set; }

	event EventHandler Click;

	event CommandEventHandler Command;
}
