namespace System.Web.UI;

public interface IEditableTextControl : ITextControl
{
	event EventHandler TextChanged;
}
