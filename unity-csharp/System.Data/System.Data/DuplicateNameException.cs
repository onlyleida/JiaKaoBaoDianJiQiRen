using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class DuplicateNameException : DataException
{
	protected DuplicateNameException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public DuplicateNameException()
		: base("Duplicate name not allowed.")
	{
		HResult = -2146232030;
	}

	public DuplicateNameException(string s)
		: base(s)
	{
		HResult = -2146232030;
	}

	public DuplicateNameException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232030;
	}
}
