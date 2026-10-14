using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class MinLengthAttribute : ValidationAttribute
{
	public int Length { get; private set; }

	public MinLengthAttribute(int length)
		: base("The field {0} must be a string or array type with a minimum length of '{1}'.")
	{
		Length = length;
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
		return num >= Length;
	}

	public override string FormatErrorMessage(string name)
	{
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, Length);
	}

	private void EnsureLegalLengths()
	{
		if (Length < 0)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "MinLengthAttribute must have a Length value that is zero or greater."));
		}
	}
}
