using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class DeletedRowInaccessibleException : DataException
{
	protected DeletedRowInaccessibleException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public DeletedRowInaccessibleException()
		: base("Deleted rows inaccessible.")
	{
		HResult = -2146232031;
	}

	public DeletedRowInaccessibleException(string s)
		: base(s)
	{
		HResult = -2146232031;
	}

	public DeletedRowInaccessibleException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232031;
	}
}
