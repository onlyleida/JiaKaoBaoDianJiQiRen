using System.Security.Cryptography.X509Certificates;
using System.Security.Permissions;
using Unity;

namespace System.Security.Cryptography;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class ManifestSignatureInformation
{
	public AuthenticodeSignatureInformation AuthenticodeSignature
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ManifestKinds Manifest
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public StrongNameSignatureInformation StrongNameSignature
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal ManifestSignatureInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static ManifestSignatureInformationCollection VerifySignature(ActivationContext application)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static ManifestSignatureInformationCollection VerifySignature(ActivationContext application, ManifestKinds manifests)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SecuritySafeCritical]
	public static ManifestSignatureInformationCollection VerifySignature(ActivationContext application, ManifestKinds manifests, X509RevocationFlag revocationFlag, X509RevocationMode revocationMode)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
