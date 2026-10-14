using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerClick")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputSubmit : HtmlInputButton, IPostBackEventHandler
{
	public HtmlInputSubmit()
		: base("submit")
	{
	}

	public HtmlInputSubmit(string type)
		: base(type)
	{
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		base.RaisePostBackEvent(eventArgument);
	}
}
