using System.Runtime.Serialization;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[Serializable]
public class ActiveDirectoryObjectExistsException : Exception
{
	public ActiveDirectoryObjectExistsException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected ActiveDirectoryObjectExistsException(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ActiveDirectoryObjectExistsException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ActiveDirectoryObjectExistsException(string message, Exception inner)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
