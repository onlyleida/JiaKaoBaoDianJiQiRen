using System.Security.Permissions;
using Unity;

namespace System.Security.Cryptography;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class StrongNameSignatureInformation
{
	public string HashAlgorithm
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int HResult
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool IsValid
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public AsymmetricAlgorithm PublicKey
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SignatureVerificationResult VerificationResult
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal StrongNameSignatureInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
