using System.Security.Permissions;
using Microsoft.Win32.SafeHandles;
using Unity;

namespace System.Security.Cryptography;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class ECDiffieHellmanCng : ECDiffieHellman
{
	public CngAlgorithm HashAlgorithm
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public byte[] HmacKey
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public CngKey Key
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ECDiffieHellmanKeyDerivationFunction KeyDerivationFunction
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public byte[] Label
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public override ECDiffieHellmanPublicKey PublicKey
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public byte[] SecretAppend
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public byte[] SecretPrepend
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public byte[] Seed
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool UseSecretAgreementAsHmacKey
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public ECDiffieHellmanCng()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ECDiffieHellmanCng(int keySize)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	public ECDiffieHellmanCng(CngKey key)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ECDiffieHellmanCng(ECCurve curve)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	public byte[] DeriveKeyMaterial(CngKey otherPartyPublicKey)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SecurityCritical]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public SafeNCryptSecretHandle DeriveSecretAgreementHandle(CngKey otherPartyPublicKey)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public SafeNCryptSecretHandle DeriveSecretAgreementHandle(ECDiffieHellmanPublicKey otherPartyPublicKey)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void FromXmlString(string xml, ECKeyXmlFormat format)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string ToXmlString(ECKeyXmlFormat format)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
