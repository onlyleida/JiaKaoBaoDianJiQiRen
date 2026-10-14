using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class NoNullAllowedException : DataException
{
	protected NoNullAllowedException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public NoNullAllowedException()
		: base("Null not allowed.")
	{
		HResult = -2146232026;
	}

	public NoNullAllowedException(string s)
		: base(s)
	{
		HResult = -2146232026;
	}

	public NoNullAllowedException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232026;
	}
}
