using System.Security.Permissions;

namespace System.Web.Services.Description;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public abstract class SoapExtensionReflector
{
	private ProtocolReflector protocolReflector;

	public ProtocolReflector ReflectionContext
	{
		get
		{
			return protocolReflector;
		}
		set
		{
			protocolReflector = value;
		}
	}

	public abstract void ReflectMethod();

	public virtual void ReflectDescription()
	{
	}
}
