using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Permissions;
using System.Security.Principal;
using Unity;

namespace System.Web.Security;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class FormsIdentity : IIdentity
{
	private FormsAuthenticationTicket ticket;

	public string AuthenticationType => "Forms";

	public bool IsAuthenticated => true;

	public string Name => ticket.Name;

	public FormsAuthenticationTicket Ticket => ticket;

	public override IEnumerable<Claim> Claims
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<Claim>)0;
		}
	}

	public FormsIdentity(FormsAuthenticationTicket ticket)
	{
		this.ticket = ticket;
	}

	protected FormsIdentity(FormsIdentity identity)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual ClaimsIdentity Clone()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
