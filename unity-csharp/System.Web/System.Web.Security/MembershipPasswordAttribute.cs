using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;
using Unity;

namespace System.Web.Security;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class MembershipPasswordAttribute : ValidationAttribute
{
	public string MinNonAlphanumericCharactersError { get; set; }

	public string MinPasswordLengthError { get; set; }

	public int MinRequiredNonAlphanumericCharacters { get; set; }

	public int MinRequiredPasswordLength { get; set; }

	public string PasswordStrengthError { get; set; }

	public string PasswordStrengthRegularExpression { get; set; }

	public Type ResourceType { get; set; }

	public int? PasswordStrengthRegexTimeout
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public MembershipPasswordAttribute()
	{
		if (Membership.Provider != null)
		{
			MinRequiredNonAlphanumericCharacters = Membership.Provider.MinRequiredNonAlphanumericCharacters;
			MinRequiredPasswordLength = Membership.Provider.MinRequiredPasswordLength;
			PasswordStrengthRegularExpression = Membership.Provider.PasswordStrengthRegularExpression;
		}
		else
		{
			MinRequiredPasswordLength = 7;
			MinRequiredNonAlphanumericCharacters = 1;
			PasswordStrengthRegularExpression = "(?=.{6,})(?=(.*\\d){1,})(?=(.*\\W){1,})";
		}
		MinNonAlphanumericCharactersError = "The '{0}' field is an invalid password. Password must have {1} or more non-alphanumeric characters.";
		MinPasswordLengthError = "The '{0}' field is an invalid password. Password must have {1} or more characters.";
		PasswordStrengthError = "The '{0}' field is an invalid password. It does not meet the password strength requirements";
		ErrorMessage = "The field {0} is invalid.";
	}

	protected override ValidationResult IsValid(object value, ValidationContext validationContext)
	{
		string text = value as string;
		bool flag = false;
		if (string.IsNullOrEmpty(text))
		{
			return null;
		}
		string format = string.Empty;
		int num = 0;
		Regex regex = new Regex("\\W|_");
		if (MinRequiredPasswordLength > 0 && text.Length < MinRequiredPasswordLength)
		{
			format = MinPasswordLengthError;
			num = MinRequiredPasswordLength;
			flag = true;
		}
		if (!flag && MinRequiredNonAlphanumericCharacters > 0 && regex.Matches(text).Count < MinRequiredNonAlphanumericCharacters)
		{
			format = MinNonAlphanumericCharactersError;
			num = MinRequiredNonAlphanumericCharacters;
			flag = true;
		}
		if (!flag && !string.IsNullOrEmpty(PasswordStrengthRegularExpression) && new Regex(PasswordStrengthRegularExpression).IsMatch(text))
		{
			format = PasswordStrengthError;
			flag = true;
		}
		if (flag)
		{
			if (validationContext == null)
			{
				return new ValidationResult("error");
			}
			return new ValidationResult(string.Format(format, validationContext.DisplayName, num), new string[1] { validationContext.MemberName });
		}
		return ValidationResult.Success;
	}
}
