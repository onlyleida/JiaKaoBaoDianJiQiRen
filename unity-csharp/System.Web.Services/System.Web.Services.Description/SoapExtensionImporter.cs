using System.CodeDom;
using System.Security.Permissions;

namespace System.Web.Services.Description;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public abstract class SoapExtensionImporter
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

	public abstract void ImportMethod(CodeAttributeDeclarationCollection metadata);
}
