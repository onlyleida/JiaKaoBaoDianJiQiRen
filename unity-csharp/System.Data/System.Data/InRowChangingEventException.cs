using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class InRowChangingEventException : DataException
{
	protected InRowChangingEventException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public InRowChangingEventException()
		: base("Operation not supported in the RowChanging event.")
	{
		HResult = -2146232029;
	}

	public InRowChangingEventException(string s)
		: base(s)
	{
		HResult = -2146232029;
	}

	public InRowChangingEventException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232029;
	}
}
