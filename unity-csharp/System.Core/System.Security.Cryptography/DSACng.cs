using System.Security.Permissions;
using Unity;

namespace System.Security.Cryptography;

public sealed class DSACng : DSA
{
	public CngKey Key
	{
		[SecuritySafeCritical]
		[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public DSACng()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DSACng(int keySize)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
	public DSACng(CngKey key)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	public override byte[] CreateSignature(byte[] rgbHash)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override DSAParameters ExportParameters(bool includePrivateParameters)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override void ImportParameters(DSAParameters parameters)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	public override bool VerifySignature(byte[] rgbHash, byte[] rgbSignature)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
