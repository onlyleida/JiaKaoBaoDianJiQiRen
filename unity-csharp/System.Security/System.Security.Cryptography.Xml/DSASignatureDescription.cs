namespace System.Security.Cryptography.Xml;

internal class DSASignatureDescription : SignatureDescription
{
	private const string HashAlgorithm = "SHA1";

	public DSASignatureDescription()
	{
		KeyAlgorithm = typeof(DSA).AssemblyQualifiedName;
		FormatterAlgorithm = typeof(DSASignatureFormatter).AssemblyQualifiedName;
		DeformatterAlgorithm = typeof(DSASignatureDeformatter).AssemblyQualifiedName;
		DigestAlgorithm = "SHA1";
	}

	public sealed override AsymmetricSignatureDeformatter CreateDeformatter(AsymmetricAlgorithm key)
	{
		AsymmetricSignatureDeformatter asymmetricSignatureDeformatter = (AsymmetricSignatureDeformatter)CryptoHelpers.CreateFromName(DeformatterAlgorithm);
		asymmetricSignatureDeformatter.SetKey(key);
		asymmetricSignatureDeformatter.SetHashAlgorithm("SHA1");
		return asymmetricSignatureDeformatter;
	}

	public sealed override AsymmetricSignatureFormatter CreateFormatter(AsymmetricAlgorithm key)
	{
		AsymmetricSignatureFormatter asymmetricSignatureFormatter = (AsymmetricSignatureFormatter)CryptoHelpers.CreateFromName(FormatterAlgorithm);
		asymmetricSignatureFormatter.SetKey(key);
		asymmetricSignatureFormatter.SetHashAlgorithm("SHA1");
		return asymmetricSignatureFormatter;
	}

	public sealed override HashAlgorithm CreateDigest()
	{
		return SHA1.Create();
	}
}
