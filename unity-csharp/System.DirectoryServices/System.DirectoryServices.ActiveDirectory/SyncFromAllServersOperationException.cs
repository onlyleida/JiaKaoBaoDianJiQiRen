using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[Serializable]
public class SyncFromAllServersOperationException : ActiveDirectoryOperationException, ISerializable
{
	public SyncFromAllServersErrorInformation[] ErrorInformation
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public SyncFromAllServersOperationException(string message, Exception inner, SyncFromAllServersErrorInformation[] errors)
		: base(message, inner)
	{
		throw new NotImplementedException();
	}

	public SyncFromAllServersOperationException(string message, Exception inner)
		: base(message, inner)
	{
		throw new NotImplementedException();
	}

	public SyncFromAllServersOperationException(string message)
		: base(message)
	{
		throw new NotImplementedException();
	}

	public SyncFromAllServersOperationException()
		: base("DSSyncAllFailure")
	{
		throw new NotImplementedException();
	}

	protected SyncFromAllServersOperationException(SerializationInfo info, StreamingContext context)
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
