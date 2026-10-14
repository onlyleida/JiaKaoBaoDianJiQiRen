using System.Collections;

namespace System.ComponentModel.Design;

public sealed class LoadedEventArgs : EventArgs
{
	private ICollection _errors;

	private bool _succeeded;

	public ICollection Errors => _errors;

	public bool HasSucceeded => _succeeded;

	public LoadedEventArgs(bool succeeded, ICollection errors)
	{
		_succeeded = succeeded;
		_errors = errors;
	}
}
