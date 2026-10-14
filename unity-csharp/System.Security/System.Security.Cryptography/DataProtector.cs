using System.Collections.Generic;
using Unity;

namespace System.Security.Cryptography;

public abstract class DataProtector
{
	protected string ApplicationName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected virtual bool PrependHashedPurposeToPlaintext
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected string PrimaryPurpose
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected IEnumerable<string> SpecificPurposes
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<string>)0;
		}
	}

	protected DataProtector(string applicationName, string primaryPurpose, string[] specificPurposes)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static DataProtector Create(string providerClass, string applicationName, string primaryPurpose, string[] specificPurposes)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual byte[] GetHashedPurpose()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract bool IsReprotectRequired(byte[] encryptedData);

	public byte[] Protect(byte[] userData)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected abstract byte[] ProviderProtect(byte[] userData);

	protected abstract byte[] ProviderUnprotect(byte[] encryptedData);

	public byte[] Unprotect(byte[] encryptedData)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
