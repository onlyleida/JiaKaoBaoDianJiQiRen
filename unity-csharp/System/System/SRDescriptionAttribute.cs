using System.ComponentModel;

namespace System;

[AttributeUsage(AttributeTargets.All)]
internal class SRDescriptionAttribute : DescriptionAttribute
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
