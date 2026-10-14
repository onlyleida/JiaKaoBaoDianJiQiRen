using System.Security.Permissions;
using Unity;

namespace System.Security.Cryptography.X509Certificates;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class AuthenticodeSignatureInformation
{
	public string Description
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Uri DescriptionUrl
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

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

	public X509Chain SignatureChain
	{
		[SecuritySafeCritical]
		[StorePermission(SecurityAction.Demand, OpenStore = true, EnumerateCertificates = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public X509Certificate2 SigningCertificate
	{
		[SecuritySafeCritical]
		[StorePermission(SecurityAction.Demand, OpenStore = true, EnumerateCertificates = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public TimestampInformation Timestamp
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public TrustStatus TrustStatus
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
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

	internal AuthenticodeSignatureInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
