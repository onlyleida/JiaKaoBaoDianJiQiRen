using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class ConstraintException : DataException
{
	protected ConstraintException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public ConstraintException()
		: base("Constraint Exception.")
	{
		HResult = -2146232022;
	}

	public ConstraintException(string s)
		: base(s)
	{
		HResult = -2146232022;
	}

	public ConstraintException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232022;
	}
}
