using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[Serializable]
public class ActiveDirectoryServerDownException : Exception, ISerializable
{
	public int ErrorCode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override string Message
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectoryServerDownException(string message, Exception inner, int errorCode, string name)
		: base(message, inner)
	{
	}

	public ActiveDirectoryServerDownException(string message, int errorCode, string name)
		: base(message)
	{
	}

	public ActiveDirectoryServerDownException(string message, Exception inner)
		: base(message, inner)
	{
	}

	public ActiveDirectoryServerDownException(string message)
		: base(message)
	{
	}

	public ActiveDirectoryServerDownException()
	{
	}

	protected ActiveDirectoryServerDownException(SerializationInfo info, StreamingContext context)
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
