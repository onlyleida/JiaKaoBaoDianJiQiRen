namespace System.Web.Services.Discovery;

public class DiscoveryDocumentLinksPattern : DiscoverySearchPattern
{
	public override string Pattern => "*.disco";

	public override DiscoveryReference GetDiscoveryReference(string filename)
	{
		return new DiscoveryDocumentReference(filename);
	}
}
