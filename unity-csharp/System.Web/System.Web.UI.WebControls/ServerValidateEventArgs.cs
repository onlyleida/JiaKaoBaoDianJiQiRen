namespace System.Web.UI.WebControls;

public class ServerValidateEventArgs : EventArgs
{
	private bool isValid;

	private string value;

	public string Value => value;

	public bool IsValid
	{
		get
		{
			return isValid;
		}
		set
		{
			isValid = value;
		}
	}

	public ServerValidateEventArgs(string value, bool isValid)
	{
		this.isValid = isValid;
		this.value = value;
	}
}
