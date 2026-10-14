using System.ComponentModel;

namespace System.DirectoryServices;

[AttributeUsage(AttributeTargets.All)]
public class DSDescriptionAttribute : DescriptionAttribute
{
	public override string Description => base.Description;

	public DSDescriptionAttribute(string description)
		: base(description)
	{
	}
}
