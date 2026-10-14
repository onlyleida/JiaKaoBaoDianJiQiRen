namespace System.Web.UI;

public interface ICheckBoxControl
{
	bool Checked { get; set; }

	event EventHandler CheckedChanged;
}
