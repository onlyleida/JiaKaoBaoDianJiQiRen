namespace System.Web.UI.Design;

[AttributeUsage(AttributeTargets.Class)]
public sealed class SupportsPreviewControlAttribute : Attribute
{
	private bool is_default;

	private bool supports_preview;

	public static readonly SupportsPreviewControlAttribute Default = new SupportsPreviewControlAttribute(supportsPreviewControl: false, isDefault: true);

	public bool SupportsPreviewControl => supports_preview;

	public SupportsPreviewControlAttribute(bool supportsPreviewControl)
		: this(supportsPreviewControl, isDefault: false)
	{
	}

	private SupportsPreviewControlAttribute(bool supportsPreviewControl, bool isDefault)
	{
		supports_preview = supportsPreviewControl;
		is_default = isDefault;
	}

	public override bool Equals(object obj)
	{
		if (obj is SupportsPreviewControlAttribute supportsPreviewControlAttribute)
		{
			return supportsPreviewControlAttribute.supports_preview == supports_preview;
		}
		return false;
	}

	public override int GetHashCode()
	{
		if (!supports_preview)
		{
			return 0;
		}
		return 1;
	}

	public override bool IsDefaultAttribute()
	{
		return is_default;
	}
}
