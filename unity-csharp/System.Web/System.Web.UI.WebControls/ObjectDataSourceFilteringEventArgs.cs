using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class ObjectDataSourceFilteringEventArgs : CancelEventArgs
{
	private IOrderedDictionary _parameterValues;

	public IOrderedDictionary ParameterValues => _parameterValues;

	public ObjectDataSourceFilteringEventArgs(IOrderedDictionary parameterValues)
	{
		_parameterValues = parameterValues;
	}
}
