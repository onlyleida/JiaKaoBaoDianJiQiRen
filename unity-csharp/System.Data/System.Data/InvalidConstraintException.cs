using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class InvalidConstraintException : DataException
{
	protected InvalidConstraintException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public InvalidConstraintException()
		: base("Invalid constraint.")
	{
		HResult = -2146232028;
	}

	public InvalidConstraintException(string s)
		: base(s)
	{
		HResult = -2146232028;
	}

	public InvalidConstraintException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232028;
	}
}
