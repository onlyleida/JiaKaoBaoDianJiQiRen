using System.Security.Permissions;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ToolboxDataAttribute : Attribute
{
	public static readonly ToolboxDataAttribute Default = new ToolboxDataAttribute(string.Empty);

	private string data;

	public string Data => data;

	public ToolboxDataAttribute(string data)
	{
		this.data = data;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is ToolboxDataAttribute toolboxDataAttribute))
		{
			return false;
		}
		return toolboxDataAttribute.Data == data;
	}

	public override int GetHashCode()
	{
		if (data == null)
		{
			return -1;
		}
		return data.GetHashCode();
	}

	public override bool IsDefaultAttribute()
	{
		if (data != null)
		{
			return data.Length == 0;
		}
		return true;
	}
}
