using System.Security.Permissions;
using Unity;

namespace System.Diagnostics;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class UnescapedXmlDiagnosticData
{
	public string UnescapedXml
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public UnescapedXmlDiagnosticData(string xmlPayload)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
