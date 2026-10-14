namespace System.Web.UI.WebControls;

public class ImageMapEventArgs : EventArgs
{
	private string _postBackValue;

	public string PostBackValue => _postBackValue;

	public ImageMapEventArgs(string value)
	{
		_postBackValue = value;
	}
}
