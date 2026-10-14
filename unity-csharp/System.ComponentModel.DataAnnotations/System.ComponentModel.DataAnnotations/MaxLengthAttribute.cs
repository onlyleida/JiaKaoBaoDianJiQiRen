using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class MaxLengthAttribute : ValidationAttribute
{
	private const int MaxAllowableLength = -1;

	public int Length { get; private set; }

	private static string DefaultErrorMessageString => "The field {0} must be a string or array type with a maximum length of '{1}'.";

	public MaxLengthAttribute(int length)
		: base(() => DefaultErrorMessageString)
	{
		Length = length;
	}

	public MaxLengthAttribute()
		: base(() => DefaultErrorMessageString)
	{
		Length = -1;
	}

	public override bool IsValid(object value)
	{
		EnsureLegalLengths();
		int num = 0;
		if (value == null)
		{
			return true;
		}
		num = ((!(value is string text)) ? ((Array)value).Length : text.Length);
		if (-1 != Length)
		{
			return num <= Length;
		}
		return true;
	}

	public override string FormatErrorMessage(string name)
	{
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, Length);
	}

	private void EnsureLegalLengths()
	{
		if (Length == 0 || Length < -1)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "MaxLengthAttribute must have a Length value that is greater than zero. Use MaxLength() without parameters to indicate that the string or array can have the maximum allowable length."));
		}
	}
}
