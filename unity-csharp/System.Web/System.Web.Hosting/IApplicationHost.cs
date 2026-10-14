using System.Security.Permissions;
using System.Web.Configuration;

namespace System.Web.Hosting;

public interface IApplicationHost
{
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	string GetVirtualPath();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	string GetPhysicalPath();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	IConfigMapPathFactory GetConfigMapPathFactory();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	IntPtr GetConfigToken();

	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	string GetSiteName();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	string GetSiteID();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	void MessageReceived();
}
