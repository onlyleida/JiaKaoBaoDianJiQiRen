using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class DetailsViewUpdateEventArgs : CancelEventArgs
{
	private object argument;

	private IOrderedDictionary keys;

	private IOrderedDictionary newValues;

	private IOrderedDictionary oldValues;

	public object CommandArgument => argument;

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary NewValues => newValues;

	public IOrderedDictionary OldValues => oldValues;

	public DetailsViewUpdateEventArgs(object commandArgument)
	{
		argument = commandArgument;
	}

	internal DetailsViewUpdateEventArgs(object argument, IOrderedDictionary keys, IOrderedDictionary oldValues, IOrderedDictionary newValues)
	{
		this.argument = argument;
		this.keys = keys;
		this.newValues = newValues;
		this.oldValues = oldValues;
	}
}
