using System.Runtime.CompilerServices;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web.Security;

[Serializable]
[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class MembershipCreateUserException : Exception
{
	private MembershipCreateStatus _StatusCode = MembershipCreateStatus.ProviderError;

	public MembershipCreateStatus StatusCode => _StatusCode;

	public MembershipCreateUserException(MembershipCreateStatus statusCode)
		: base(GetMessageFromStatusCode(statusCode))
	{
		_StatusCode = statusCode;
	}

	public MembershipCreateUserException(string message)
		: base(message)
	{
	}

	protected MembershipCreateUserException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		_StatusCode = (MembershipCreateStatus)info.GetInt32("_StatusCode");
	}

	public MembershipCreateUserException()
	{
	}

	public MembershipCreateUserException(string message, Exception innerException)
		: base(message, innerException)
	{
	}

	[PermissionSet(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue("_StatusCode", _StatusCode);
	}

	internal static string GetMessageFromStatusCode(MembershipCreateStatus statusCode)
	{
		return statusCode switch
		{
			MembershipCreateStatus.Success => "No Error.", 
			MembershipCreateStatus.InvalidUserName => "The username supplied is invalid.", 
			MembershipCreateStatus.InvalidPassword => "The password supplied is invalid.  Passwords must conform to the password strength requirements configured for the default provider.", 
			MembershipCreateStatus.InvalidQuestion => "The password-question supplied is invalid.  Note that the current provider configuration requires a valid password question and answer.  As a result, a CreateUser overload that accepts question and answer parameters must also be used.", 
			MembershipCreateStatus.InvalidAnswer => "The password-answer supplied is invalid.", 
			MembershipCreateStatus.InvalidEmail => "The E-mail supplied is invalid.", 
			MembershipCreateStatus.InvalidProviderUserKey => "The provider user key supplied is invalid. It must be of type System.Guid.", 
			MembershipCreateStatus.DuplicateUserName => "The username is already in use.", 
			MembershipCreateStatus.DuplicateEmail => "The E-mail address is already in use.", 
			MembershipCreateStatus.DuplicateProviderUserKey => "The provider user key is already in use.", 
			MembershipCreateStatus.UserRejected => "The user was rejected.", 
			_ => "The Provider encountered an unknown error.", 
		};
	}
}
