using System.Security.Permissions;
using Unity;

namespace System.Management.Instrumentation;

[AttributeUsage(AttributeTargets.Assembly)]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class WmiConfigurationAttribute : Attribute
{
	public string HostingGroup
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

	public ManagementHostingModel HostingModel
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool IdentifyLevel
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string NamespaceSecurity
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

	public string Scope
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string SecurityRestriction
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

	public WmiConfigurationAttribute(string scope)
	{
	}
}
