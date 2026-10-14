using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class DataException : SystemException
{
	protected DataException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public DataException()
		: base("Data Exception.")
	{
		HResult = -2146232032;
	}

	public DataException(string s)
		: base(s)
	{
		HResult = -2146232032;
	}

	public DataException(string s, Exception innerException)
		: base(s, innerException)
	{
	}
}
