using System.Security.Permissions;

namespace System.Web.Services.Description;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public abstract class SoapTransportImporter
{
	private SoapProtocolImporter protocolImporter;

	public SoapProtocolImporter ImportContext
	{
		get
		{
			return protocolImporter;
		}
		set
		{
			protocolImporter = value;
		}
	}

	public abstract bool IsSupportedTransport(string transport);

	public abstract void ImportClass();
}
