using System.EnterpriseServices;
using System.Security.Permissions;

namespace System.Web.Util;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Transactions
{
	public static void InvokeTransacted(TransactedCallback callback, TransactionOption mode)
	{
		bool transactionAborted = false;
		InvokeTransacted(callback, mode, ref transactionAborted);
	}

	[MonoTODO("Not implemented, not supported by Mono")]
	public static void InvokeTransacted(TransactedCallback callback, TransactionOption mode, ref bool transactionAborted)
	{
		throw new PlatformNotSupportedException("Not supported on mono");
	}
}
