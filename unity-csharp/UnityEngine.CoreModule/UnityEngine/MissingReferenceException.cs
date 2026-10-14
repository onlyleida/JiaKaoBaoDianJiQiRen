using System;
using System.Runtime.Serialization;

namespace UnityEngine;

[Serializable]
public class MissingReferenceException : SystemException
{
	private const int Result = -2147467261;

	private string unityStackTrace;

	public MissingReferenceException()
		: base("A Unity Runtime error occurred!")
	{
		HResult = -2147467261;
	}

	public MissingReferenceException(string message)
		: base(message)
	{
		HResult = -2147467261;
	}

	public MissingReferenceException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2147467261;
	}

	protected MissingReferenceException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}
}
