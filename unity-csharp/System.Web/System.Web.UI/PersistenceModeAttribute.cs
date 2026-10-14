using System.Security.Permissions;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.All)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PersistenceModeAttribute : Attribute
{
	private PersistenceMode mode;

	public static readonly PersistenceModeAttribute Attribute = new PersistenceModeAttribute(PersistenceMode.Attribute);

	public static readonly PersistenceModeAttribute Default = new PersistenceModeAttribute(PersistenceMode.Attribute);

	public static readonly PersistenceModeAttribute EncodedInnerDefaultProperty = new PersistenceModeAttribute(PersistenceMode.EncodedInnerDefaultProperty);

	public static readonly PersistenceModeAttribute InnerDefaultProperty = new PersistenceModeAttribute(PersistenceMode.InnerDefaultProperty);

	public static readonly PersistenceModeAttribute InnerProperty = new PersistenceModeAttribute(PersistenceMode.InnerProperty);

	public PersistenceMode Mode => mode;

	public PersistenceModeAttribute(PersistenceMode mode)
	{
		this.mode = mode;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is PersistenceModeAttribute persistenceModeAttribute))
		{
			return false;
		}
		return persistenceModeAttribute.mode == mode;
	}

	public override int GetHashCode()
	{
		return (int)mode;
	}

	public override bool IsDefaultAttribute()
	{
		return mode == PersistenceMode.Attribute;
	}
}
