namespace System.Web.Services.Discovery;

public sealed class ContractSearchPattern : DiscoverySearchPattern
{
	public override string Pattern => "*.asmx";

	public override DiscoveryReference GetDiscoveryReference(string filename)
	{
		return new ContractReference(filename + "?wsdl", filename);
	}
}
