namespace System.Web.Services.Discovery;

public sealed class XmlSchemaSearchPattern : DiscoverySearchPattern
{
	public override string Pattern => "*.xsd";

	public override DiscoveryReference GetDiscoveryReference(string filename)
	{
		return new SchemaReference(filename);
	}
}
