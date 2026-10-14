using System.Runtime.Serialization;

namespace System.Data;

[Serializable]
public class VersionNotFoundException : DataException
{
	protected VersionNotFoundException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new PlatformNotSupportedException();
	}

	public VersionNotFoundException()
		: base("Version not found.")
	{
		HResult = -2146232023;
	}

	public VersionNotFoundException(string s)
		: base(s)
	{
		HResult = -2146232023;
	}

	public VersionNotFoundException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2146232023;
	}
}
