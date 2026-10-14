using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class ObjectDataSourceDisposingEventArgs : CancelEventArgs
{
	private object _objectInstance;

	public object ObjectInstance => _objectInstance;

	public ObjectDataSourceDisposingEventArgs(object objectInstance)
	{
		_objectInstance = objectInstance;
	}
}
