using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class FormViewUpdateEventArgs : CancelEventArgs
{
	private object argument;

	private IOrderedDictionary keys;

	private IOrderedDictionary oldValues;

	private IOrderedDictionary newValues;

	public object CommandArgument => argument;

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary NewValues => newValues;

	public IOrderedDictionary OldValues => oldValues;

	public FormViewUpdateEventArgs(object commandArgument)
	{
		argument = commandArgument;
	}

	internal FormViewUpdateEventArgs(object argument, IOrderedDictionary keys, IOrderedDictionary oldValues, IOrderedDictionary newValues)
		: this(argument)
	{
		this.keys = keys;
		this.oldValues = oldValues;
		this.newValues = newValues;
	}
}
