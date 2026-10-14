namespace System.Security.Cryptography.Xml;

public class XmlDsigExcC14NWithCommentsTransform : XmlDsigExcC14NTransform
{
	public XmlDsigExcC14NWithCommentsTransform()
		: base(includeComments: true)
	{
		Algorithm = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments";
	}

	public XmlDsigExcC14NWithCommentsTransform(string inclusiveNamespacesPrefixList)
		: base(includeComments: true, inclusiveNamespacesPrefixList)
	{
		Algorithm = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments";
	}
}
