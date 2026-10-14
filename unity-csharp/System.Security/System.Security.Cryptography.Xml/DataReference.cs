namespace System.Security.Cryptography.Xml;

public sealed class DataReference : EncryptedReference
{
	public DataReference()
	{
		ReferenceType = "DataReference";
	}

	public DataReference(string uri)
		: base(uri)
	{
		ReferenceType = "DataReference";
	}

	public DataReference(string uri, TransformChain transformChain)
		: base(uri, transformChain)
	{
		ReferenceType = "DataReference";
	}
}
