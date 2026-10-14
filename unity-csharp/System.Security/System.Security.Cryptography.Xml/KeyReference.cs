namespace System.Security.Cryptography.Xml;

public sealed class KeyReference : EncryptedReference
{
	public KeyReference()
	{
		ReferenceType = "KeyReference";
	}

	public KeyReference(string uri)
		: base(uri)
	{
		ReferenceType = "KeyReference";
	}

	public KeyReference(string uri, TransformChain transformChain)
		: base(uri, transformChain)
	{
		ReferenceType = "KeyReference";
	}
}
