namespace System.Xml.Schema;

public class XmlSchemaMaxLengthFacet : XmlSchemaNumericFacet
{
	public XmlSchemaMaxLengthFacet()
	{
		FacetType = FacetType.MaxLength;
	}
}
