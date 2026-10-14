namespace System.Web.UI.WebControls;

public class BulletedListEventArgs : EventArgs
{
	private int _index;

	public int Index => _index;

	public BulletedListEventArgs(int index)
	{
		_index = index;
	}
}
