using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class StringLengthAttribute : ValidationAttribute
{
	public int MaximumLength { get; private set; }

	public int MinimumLength { get; set; }

	public StringLengthAttribute(int maximumLength)
		: base(() => "The field {0} must be a string with a maximum length of {1}.")
	{
		MaximumLength = maximumLength;
	}

	public override bool IsValid(object value)
	{
		EnsureLegalLengths();
		int num = ((value != null) ? ((string)value).Length : 0);
		if (value != null)
		{
			if (num >= MinimumLength)
			{
				return num <= MaximumLength;
			}
			return false;
		}
		return true;
	}

	public override string FormatErrorMessage(string name)
	{
		EnsureLegalLengths();
		string format = ((MinimumLength != 0 && !CustomErrorMessageSet) ? "The field {0} must be a string with a minimum length of {2} and a maximum length of {1}." : ErrorMessageString);
		return string.Format(CultureInfo.CurrentCulture, format, name, MaximumLength, MinimumLength);
	}

	private void EnsureLegalLengths()
	{
		if (MaximumLength < 0)
		{
			throw new InvalidOperationException("The maximum length must be a nonnegative integer.");
		}
		if (MaximumLength < MinimumLength)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The maximum value '{0}' must be greater than or equal to the minimum value '{1}'.", MaximumLength, MinimumLength));
		}
	}
}
