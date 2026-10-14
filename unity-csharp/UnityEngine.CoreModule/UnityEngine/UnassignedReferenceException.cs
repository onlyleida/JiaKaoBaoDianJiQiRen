using System;
using System.Runtime.Serialization;

namespace UnityEngine;

[Serializable]
public class UnassignedReferenceException : SystemException
{
	private const int Result = -2147467261;

	private string unityStackTrace;

	public UnassignedReferenceException()
		: base("A Unity Runtime error occurred!")
	{
		HResult = -2147467261;
	}

	public UnassignedReferenceException(string message)
		: base(message)
	{
		HResult = -2147467261;
	}

	public UnassignedReferenceException(string message, Exception innerException)
		: base(message, innerException)
	{
		HResult = -2147467261;
	}

	protected UnassignedReferenceException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}
}
