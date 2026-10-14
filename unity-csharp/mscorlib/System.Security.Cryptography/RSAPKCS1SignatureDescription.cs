namespace System.Security.Cryptography;

internal abstract class RSAPKCS1SignatureDescription : SignatureDescription
{
	private string _hashAlgorithm;

	protected RSAPKCS1SignatureDescription(string hashAlgorithm, string digestAlgorithm)
	{
		KeyAlgorithm = "System.Security.Cryptography.RSA";
		DigestAlgorithm = digestAlgorithm;
		FormatterAlgorithm = "System.Security.Cryptography.RSAPKCS1SignatureFormatter";
		DeformatterAlgorithm = "System.Security.Cryptography.RSAPKCS1SignatureDeformatter";
		_hashAlgorithm = hashAlgorithm;
	}

	public sealed override AsymmetricSignatureDeformatter CreateDeformatter(AsymmetricAlgorithm key)
	{
		AsymmetricSignatureDeformatter asymmetricSignatureDeformatter = base.CreateDeformatter(key);
		asymmetricSignatureDeformatter.SetHashAlgorithm(_hashAlgorithm);
		return asymmetricSignatureDeformatter;
	}

	public sealed override AsymmetricSignatureFormatter CreateFormatter(AsymmetricAlgorithm key)
	{
		AsymmetricSignatureFormatter asymmetricSignatureFormatter = base.CreateFormatter(key);
		asymmetricSignatureFormatter.SetHashAlgorithm(_hashAlgorithm);
		return asymmetricSignatureFormatter;
	}
}
