using System.Collections;
using System.Runtime.Serialization;
using System.Security;

namespace System.ComponentModel.Design;

[Serializable]
public sealed class ExceptionCollection : Exception
{
	private ArrayList exceptions;

	public ArrayList Exceptions => exceptions;

	[System.MonoTODO]
	public ExceptionCollection(ArrayList exceptions)
	{
		this.exceptions = exceptions;
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[SecurityCritical]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}
}
