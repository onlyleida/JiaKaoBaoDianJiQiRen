using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class RowNotInTableException : DataException
{
	protected RowNotInTableException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public RowNotInTableException()
		: base("Row not found in table.")
	{
		HResult = -2146232024;
	}

	public RowNotInTableException(string s)
		: base(s)
	{
		HResult = -2146232024;
	}

	public RowNotInTableException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232024;
	}
}
