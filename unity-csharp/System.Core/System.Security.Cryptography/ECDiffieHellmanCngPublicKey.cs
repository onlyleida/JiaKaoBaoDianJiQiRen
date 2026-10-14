using System.Security.Permissions;
using Unity;

namespace System.Security.Cryptography;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class ECDiffieHellmanCngPublicKey : ECDiffieHellmanPublicKey
{
	public CngKeyBlobFormat BlobFormat
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal ECDiffieHellmanCngPublicKey()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	public static ECDiffieHellmanPublicKey FromByteArray(byte[] publicKeyBlob, CngKeyBlobFormat format)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SecuritySafeCritical]
	public static ECDiffieHellmanCngPublicKey FromXmlString(string xml)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public CngKey Import()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
