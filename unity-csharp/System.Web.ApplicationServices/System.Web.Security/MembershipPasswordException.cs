using System.Runtime.CompilerServices;
using System.Runtime.Serialization;

namespace System.Web.Security;

[Serializable]
[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class MembershipPasswordException : Exception
{
	public MembershipPasswordException(string message)
		: base(message)
	{
	}

	protected MembershipPasswordException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public MembershipPasswordException()
	{
	}

	public MembershipPasswordException(string message, Exception innerException)
		: base(message, innerException)
	{
	}
}
