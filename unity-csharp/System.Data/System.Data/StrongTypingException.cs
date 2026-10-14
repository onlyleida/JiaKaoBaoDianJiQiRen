using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class StrongTypingException : DataException
{
	protected StrongTypingException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public StrongTypingException()
	{
		HResult = -2146232021;
	}

	public StrongTypingException(string message)
		: base(message)
	{
		HResult = -2146232021;
	}

	public StrongTypingException(string s, Exception innerException)
		: base(s, innerException)
	{
		HResult = -2146232021;
	}
}
