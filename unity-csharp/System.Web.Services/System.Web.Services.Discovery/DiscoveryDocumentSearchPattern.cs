namespace System.Web.Services.Discovery;

public sealed class DiscoveryDocumentSearchPattern : DiscoverySearchPattern
{
	public override string Pattern => "*.vsdisco";

	public override DiscoveryReference GetDiscoveryReference(string filename)
	{
		return new DiscoveryDocumentReference(filename);
	}
}
