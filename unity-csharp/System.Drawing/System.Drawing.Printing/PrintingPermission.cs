using System.Security;
using System.Security.Permissions;

namespace System.Drawing.Printing;

[Serializable]
public sealed class PrintingPermission : CodeAccessPermission, IUnrestrictedPermission
{
	private PrintingPermissionLevel printingLevel;

	public PrintingPermissionLevel Level
	{
		get
		{
			return printingLevel;
		}
		set
		{
			VerifyPrintingLevel(value);
			printingLevel = value;
		}
	}

	public PrintingPermission(PermissionState state)
	{
		switch (state)
		{
		case PermissionState.Unrestricted:
			printingLevel = PrintingPermissionLevel.AllPrinting;
			break;
		case PermissionState.None:
			printingLevel = PrintingPermissionLevel.NoPrinting;
			break;
		default:
			throw new ArgumentException(SR.Format("Permission state is not valid."));
		}
	}

	public PrintingPermission(PrintingPermissionLevel printingLevel)
	{
		VerifyPrintingLevel(printingLevel);
		this.printingLevel = printingLevel;
	}

	private static void VerifyPrintingLevel(PrintingPermissionLevel level)
	{
		if (level < PrintingPermissionLevel.NoPrinting || level > PrintingPermissionLevel.AllPrinting)
		{
			throw new ArgumentException(SR.Format("Permission level is not valid."));
		}
	}

	public bool IsUnrestricted()
	{
		return printingLevel == PrintingPermissionLevel.AllPrinting;
	}

	public override bool IsSubsetOf(IPermission target)
	{
		if (target == null)
		{
			return printingLevel == PrintingPermissionLevel.NoPrinting;
		}
		if (!(target is PrintingPermission printingPermission))
		{
			throw new ArgumentException(SR.Format("Target does not have permission to print."));
		}
		return printingLevel <= printingPermission.printingLevel;
	}

	public override IPermission Intersect(IPermission target)
	{
		if (target == null)
		{
			return null;
		}
		if (!(target is PrintingPermission printingPermission))
		{
			throw new ArgumentException(SR.Format("Target does not have permission to print."));
		}
		PrintingPermissionLevel printingPermissionLevel = ((printingLevel < printingPermission.printingLevel) ? printingLevel : printingPermission.printingLevel);
		if (printingPermissionLevel == PrintingPermissionLevel.NoPrinting)
		{
			return null;
		}
		return new PrintingPermission(printingPermissionLevel);
	}

	public override IPermission Union(IPermission target)
	{
		if (target == null)
		{
			return Copy();
		}
		if (!(target is PrintingPermission printingPermission))
		{
			throw new ArgumentException(SR.Format("Target does not have permission to print."));
		}
		PrintingPermissionLevel printingPermissionLevel = ((printingLevel > printingPermission.printingLevel) ? printingLevel : printingPermission.printingLevel);
		if (printingPermissionLevel == PrintingPermissionLevel.NoPrinting)
		{
			return null;
		}
		return new PrintingPermission(printingPermissionLevel);
	}

	public override IPermission Copy()
	{
		return new PrintingPermission(printingLevel);
	}

	public override SecurityElement ToXml()
	{
		SecurityElement securityElement = new SecurityElement("IPermission");
		securityElement.AddAttribute("class", GetType().FullName + ", " + GetType().Module.Assembly.FullName.Replace('"', '\''));
		securityElement.AddAttribute("version", "1");
		if (!IsUnrestricted())
		{
			securityElement.AddAttribute("Level", Enum.GetName(typeof(PrintingPermissionLevel), printingLevel));
		}
		else
		{
			securityElement.AddAttribute("Unrestricted", "true");
		}
		return securityElement;
	}

	public override void FromXml(SecurityElement esd)
	{
		if (esd == null)
		{
			throw new ArgumentNullException("esd");
		}
		string text = esd.Attribute("class");
		if (text == null || text.IndexOf(GetType().FullName) == -1)
		{
			throw new ArgumentException(SR.Format("Class name is not valid."));
		}
		string text2 = esd.Attribute("Unrestricted");
		if (text2 != null && string.Equals(text2, "true", StringComparison.OrdinalIgnoreCase))
		{
			printingLevel = PrintingPermissionLevel.AllPrinting;
			return;
		}
		printingLevel = PrintingPermissionLevel.NoPrinting;
		string text3 = esd.Attribute("Level");
		if (text3 != null)
		{
			printingLevel = (PrintingPermissionLevel)Enum.Parse(typeof(PrintingPermissionLevel), text3);
		}
	}
}
