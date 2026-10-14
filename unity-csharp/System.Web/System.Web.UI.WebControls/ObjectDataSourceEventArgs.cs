namespace System.Web.UI.WebControls;

public class ObjectDataSourceEventArgs : EventArgs
{
	private object _objectInstance;

	public object ObjectInstance
	{
		get
		{
			return _objectInstance;
		}
		set
		{
			_objectInstance = value;
		}
	}

	public ObjectDataSourceEventArgs(object objectInstance)
	{
		_objectInstance = objectInstance;
	}
}
