using System.Collections.Specialized;

namespace System.Web.UI.WebControls;

public class ObjectDataSourceSelectingEventArgs : ObjectDataSourceMethodEventArgs
{
	private DataSourceSelectArguments _arguments;

	private bool _executingSelectCount;

	public DataSourceSelectArguments Arguments => _arguments;

	public bool ExecutingSelectCount => _executingSelectCount;

	public ObjectDataSourceSelectingEventArgs(IOrderedDictionary inputParameters, DataSourceSelectArguments arguments, bool executingSelectCount)
		: base(inputParameters)
	{
		_arguments = arguments;
		_executingSelectCount = executingSelectCount;
	}
}
