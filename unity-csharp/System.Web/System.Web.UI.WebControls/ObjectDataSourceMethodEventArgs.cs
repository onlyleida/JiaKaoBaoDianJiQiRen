using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class ObjectDataSourceMethodEventArgs : CancelEventArgs
{
	private IOrderedDictionary _inputParameters;

	public IOrderedDictionary InputParameters => _inputParameters;

	public ObjectDataSourceMethodEventArgs(IOrderedDictionary inputParameters)
	{
		_inputParameters = inputParameters;
	}
}
