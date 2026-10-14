namespace System.Xml.Schema;

public class XmlSchemaMinLengthFacet : XmlSchemaNumericFacet
{
	public XmlSchemaMinLengthFacet()
	{
		FacetType = FacetType.MinLength;
	}
}
