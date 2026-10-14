using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class SqlDataSourceFilteringEventArgs : CancelEventArgs
{
	private IOrderedDictionary _parameterValues;

	public IOrderedDictionary ParameterValues => _parameterValues;

	public SqlDataSourceFilteringEventArgs(IOrderedDictionary parameterValues)
	{
		_parameterValues = parameterValues;
	}
}
