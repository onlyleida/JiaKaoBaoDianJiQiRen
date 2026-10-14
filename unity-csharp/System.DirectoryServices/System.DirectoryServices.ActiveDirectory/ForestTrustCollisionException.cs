using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[Serializable]
public class ForestTrustCollisionException : ActiveDirectoryOperationException, ISerializable
{
	public ForestTrustRelationshipCollisionCollection Collisions
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ForestTrustCollisionException(string message, Exception inner, ForestTrustRelationshipCollisionCollection collisions)
		: base(message, inner)
	{
		throw new NotImplementedException();
	}

	public ForestTrustCollisionException(string message, Exception inner)
		: base(message, inner)
	{
	}

	public ForestTrustCollisionException(string message)
		: base(message)
	{
	}

	public ForestTrustCollisionException()
		: base("ForestTrustCollision")
	{
	}

	protected ForestTrustCollisionException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		throw new NotImplementedException();
	}
}
