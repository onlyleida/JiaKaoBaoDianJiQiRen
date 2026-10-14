using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class MissingPrimaryKeyException : DataException
{
	protected MissingPrimaryKeyException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public MissingPrimaryKeyException()
		: base("Missing primary key.")
	{
		HResult = -2146232027;
	}

	public MissingPrimaryKeyException(string s)
		: base(s)
	{
		HResult = -2146232027;
	}

	public MissingPrimaryKeyException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232027;
	}
}
