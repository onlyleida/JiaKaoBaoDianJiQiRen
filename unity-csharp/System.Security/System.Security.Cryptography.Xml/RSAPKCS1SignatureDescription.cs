namespace System.Security.Cryptography.Xml;

internal abstract class RSAPKCS1SignatureDescription : SignatureDescription
{
	public RSAPKCS1SignatureDescription(string hashAlgorithmName)
	{
		KeyAlgorithm = typeof(RSA).AssemblyQualifiedName;
		FormatterAlgorithm = typeof(RSAPKCS1SignatureFormatter).AssemblyQualifiedName;
		DeformatterAlgorithm = typeof(RSAPKCS1SignatureDeformatter).AssemblyQualifiedName;
		DigestAlgorithm = hashAlgorithmName;
	}

	public sealed override AsymmetricSignatureDeformatter CreateDeformatter(AsymmetricAlgorithm key)
	{
		AsymmetricSignatureDeformatter asymmetricSignatureDeformatter = (AsymmetricSignatureDeformatter)CryptoHelpers.CreateFromName(DeformatterAlgorithm);
		asymmetricSignatureDeformatter.SetKey(key);
		asymmetricSignatureDeformatter.SetHashAlgorithm(DigestAlgorithm);
		return asymmetricSignatureDeformatter;
	}

	public sealed override AsymmetricSignatureFormatter CreateFormatter(AsymmetricAlgorithm key)
	{
		AsymmetricSignatureFormatter asymmetricSignatureFormatter = (AsymmetricSignatureFormatter)CryptoHelpers.CreateFromName(FormatterAlgorithm);
		asymmetricSignatureFormatter.SetKey(key);
		asymmetricSignatureFormatter.SetHashAlgorithm(DigestAlgorithm);
		return asymmetricSignatureFormatter;
	}

	public abstract override HashAlgorithm CreateDigest();
}
