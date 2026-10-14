using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class DetailsViewInsertEventArgs : CancelEventArgs
{
	private object argument;

	private IOrderedDictionary values;

	public object CommandArgument => argument;

	public IOrderedDictionary Values => values;

	public DetailsViewInsertEventArgs(object commandArgument)
	{
		argument = commandArgument;
	}

	internal DetailsViewInsertEventArgs(object argument, IOrderedDictionary values)
	{
		this.argument = argument;
		this.values = values;
	}
}
