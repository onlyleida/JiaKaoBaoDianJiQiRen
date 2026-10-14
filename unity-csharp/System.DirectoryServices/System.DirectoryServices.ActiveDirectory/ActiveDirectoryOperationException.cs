using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[Serializable]
public class ActiveDirectoryOperationException : Exception, ISerializable
{
	public int ErrorCode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectoryOperationException(string message, Exception inner, int errorCode)
		: base(message, inner)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectoryOperationException(string message, int errorCode)
		: base(message)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectoryOperationException(string message, Exception inner)
		: base(message, inner)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectoryOperationException(string message)
		: base(message)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectoryOperationException()
		: base("DSUnknownFailure")
	{
		throw new NotImplementedException();
	}

	protected ActiveDirectoryOperationException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new NotImplementedException();
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		throw new NotImplementedException();
	}
}
