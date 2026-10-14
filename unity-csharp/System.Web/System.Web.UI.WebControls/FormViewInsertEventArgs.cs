using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class FormViewInsertEventArgs : CancelEventArgs
{
	private object argument;

	private IOrderedDictionary values;

	public object CommandArgument => argument;

	public IOrderedDictionary Values => values;

	public FormViewInsertEventArgs(object commandArgument)
	{
		argument = commandArgument;
	}

	internal FormViewInsertEventArgs(object argument, IOrderedDictionary values)
	{
		this.values = values;
		this.argument = argument;
	}
}
