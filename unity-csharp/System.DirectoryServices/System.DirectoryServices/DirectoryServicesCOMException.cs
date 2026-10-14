using System.Runtime.InteropServices;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.DirectoryServices;

[Serializable]
public class DirectoryServicesCOMException : COMException, ISerializable
{
	public int ExtendedError
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string ExtendedErrorMessage
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DirectoryServicesCOMException()
	{
	}

	public DirectoryServicesCOMException(string message)
		: base(message)
	{
	}

	public DirectoryServicesCOMException(string message, Exception inner)
		: base(message, inner)
	{
	}

	protected DirectoryServicesCOMException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		throw new NotImplementedException();
	}
}
