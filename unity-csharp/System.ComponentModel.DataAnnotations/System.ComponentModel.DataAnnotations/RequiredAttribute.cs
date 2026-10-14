namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class RequiredAttribute : ValidationAttribute
{
	public bool AllowEmptyStrings { get; set; }

	public RequiredAttribute()
		: base(() => "The {0} field is required.")
	{
	}

	public override bool IsValid(object value)
	{
		if (value == null)
		{
			return false;
		}
		if (value is string text && !AllowEmptyStrings)
		{
			return text.Trim().Length != 0;
		}
		return true;
	}
}
