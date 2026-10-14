using System.ComponentModel;

namespace System.Drawing;

[AttributeUsage(AttributeTargets.All)]
internal sealed class SRDescriptionAttribute : DescriptionAttribute
{
	private bool isReplaced;

	public override string Description
	{
		get
		{
			if (!isReplaced)
			{
				isReplaced = true;
				DescriptionValue = Locale.GetText(DescriptionValue);
			}
			return DescriptionValue;
		}
	}

	public SRDescriptionAttribute(string description)
		: base(description)
	{
	}
}
