namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
public class DisplayFormatAttribute : Attribute
{
	public string DataFormatString { get; set; }

	public string NullDisplayText { get; set; }

	public bool ConvertEmptyStringToNull { get; set; }

	public bool ApplyFormatInEditMode { get; set; }

	public bool HtmlEncode { get; set; }

	public DisplayFormatAttribute()
	{
		ConvertEmptyStringToNull = true;
		HtmlEncode = true;
	}
}
