using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[Serializable]
public class ActiveDirectoryObjectNotFoundException : Exception, ISerializable
{
	public string Name
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	public Type Type
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO]
	public ActiveDirectoryObjectNotFoundException(string message, Type type, string name)
		: base(message)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public ActiveDirectoryObjectNotFoundException(string message, Exception inner)
		: base(message, inner)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public ActiveDirectoryObjectNotFoundException(string message)
		: base(message)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public ActiveDirectoryObjectNotFoundException()
		: base("DSUnknownFailure")
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	protected ActiveDirectoryObjectNotFoundException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		throw new NotImplementedException();
	}
}
