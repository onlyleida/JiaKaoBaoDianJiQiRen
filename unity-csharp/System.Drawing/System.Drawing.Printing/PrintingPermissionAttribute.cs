using System.Security;
using System.Security.Permissions;

namespace System.Drawing.Printing;

[AttributeUsage(AttributeTargets.All, AllowMultiple = true)]
public sealed class PrintingPermissionAttribute : CodeAccessSecurityAttribute
{
	private PrintingPermissionLevel level;

	public PrintingPermissionLevel Level
	{
		get
		{
			return level;
		}
		set
		{
			if (value < PrintingPermissionLevel.NoPrinting || value > PrintingPermissionLevel.AllPrinting)
			{
				throw new ArgumentException(SR.Format("Permission level must be between PrintingPermissionLevel.NoPrinting and PrintingPermissionLevel.AllPrinting."), "value");
			}
			level = value;
		}
	}

	public PrintingPermissionAttribute(SecurityAction action)
		: base(action)
	{
	}

	public override IPermission CreatePermission()
	{
		if (Unrestricted)
		{
			return new PrintingPermission(PermissionState.Unrestricted);
		}
		return new PrintingPermission(level);
	}
}
