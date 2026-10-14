using System.Runtime.CompilerServices;
using System.Security.Permissions;
using Unity;

namespace System.Security.Cryptography;

public sealed class DpapiDataProtector : DataProtector
{
	protected override bool PrependHashedPurposeToPlaintext
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public DataProtectionScope Scope
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	[SecuritySafeCritical]
	[DataProtectionPermission(SecurityAction.Demand, Unrestricted = true)]
	public DpapiDataProtector(string appName, string primaryPurpose, string[] specificPurpose)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override bool IsReprotectRequired(byte[] encryptedData)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SecuritySafeCritical]
	[DataProtectionPermission(SecurityAction.Assert, ProtectData = true)]
	protected override byte[] ProviderProtect(byte[] userData)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SecuritySafeCritical]
	[DataProtectionPermission(SecurityAction.Assert, UnprotectData = true)]
	protected override byte[] ProviderUnprotect(byte[] encryptedData)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
