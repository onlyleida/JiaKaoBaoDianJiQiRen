namespace System.Web.ModelBinding;

[Serializable]
public class ModelError
{
	public Exception Exception { get; private set; }

	public string ErrorMessage { get; private set; }

	public ModelError(Exception exception)
		: this(exception, null)
	{
	}

	public ModelError(Exception exception, string errorMessage)
		: this(errorMessage)
	{
		if (exception == null)
		{
			throw new ArgumentNullException("exception");
		}
		Exception = exception;
	}

	public ModelError(string errorMessage)
	{
		ErrorMessage = errorMessage ?? string.Empty;
	}
}
