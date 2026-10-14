using System.Security.Cryptography.X509Certificates;
using Unity;

namespace System.Security.Cryptography.Pkcs;

public sealed class SignerInfo
{
	private SubjectIdentifier _signer;

	private X509Certificate2 _certificate;

	private Oid _digest;

	private SignerInfoCollection _counter;

	private CryptographicAttributeObjectCollection _signed;

	private CryptographicAttributeObjectCollection _unsigned;

	private int _version;

	public CryptographicAttributeObjectCollection SignedAttributes => _signed;

	public X509Certificate2 Certificate => _certificate;

	public SignerInfoCollection CounterSignerInfos => _counter;

	public Oid DigestAlgorithm => _digest;

	public SubjectIdentifier SignerIdentifier => _signer;

	public CryptographicAttributeObjectCollection UnsignedAttributes => _unsigned;

	public int Version => _version;

	internal SignerInfo(string hashName, X509Certificate2 certificate, SubjectIdentifierType type, object o, int version)
	{
		_digest = new Oid(CryptoConfig.MapNameToOID(hashName));
		_certificate = certificate;
		_counter = new SignerInfoCollection();
		_signed = new CryptographicAttributeObjectCollection();
		_unsigned = new CryptographicAttributeObjectCollection();
		_signer = new SubjectIdentifier(type, o);
		_version = version;
	}

	[MonoTODO]
	public void CheckHash()
	{
	}

	[MonoTODO]
	public void CheckSignature(bool verifySignatureOnly)
	{
	}

	[MonoTODO]
	public void CheckSignature(X509Certificate2Collection extraStore, bool verifySignatureOnly)
	{
	}

	[MonoTODO]
	public void ComputeCounterSignature()
	{
	}

	[MonoTODO]
	public void ComputeCounterSignature(CmsSigner signer)
	{
	}

	[MonoTODO]
	public void RemoveCounterSignature(SignerInfo counterSignerInfo)
	{
	}

	[MonoTODO]
	public void RemoveCounterSignature(int index)
	{
	}

	internal SignerInfo()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
