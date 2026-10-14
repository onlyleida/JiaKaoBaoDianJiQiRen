using System.Security.Principal;
using Unity;

namespace System.Web.Security;

[Obsolete("This type is obsolete. The Passport authentication product is no longer supported and has been superseded by Live ID.")]
public sealed class PassportPrincipal : GenericPrincipal
{
	public PassportPrincipal(PassportIdentity identity, string[] roles)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
