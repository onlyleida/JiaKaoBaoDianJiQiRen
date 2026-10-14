using System.Globalization;
using System.Text.RegularExpressions;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class RegularExpressionAttribute : ValidationAttribute
{
	private int _matchTimeoutInMilliseconds;

	private bool _matchTimeoutSet;

	public string Pattern { get; private set; }

	public int MatchTimeoutInMilliseconds
	{
		get
		{
			return _matchTimeoutInMilliseconds;
		}
		set
		{
			_matchTimeoutInMilliseconds = value;
			_matchTimeoutSet = true;
		}
	}

	private Regex Regex { get; set; }

	public RegularExpressionAttribute(string pattern)
		: base(() => "The field {0} must match the regular expression '{1}'.")
	{
		Pattern = pattern;
	}

	public override bool IsValid(object value)
	{
		SetupRegex();
		string text = Convert.ToString(value, CultureInfo.CurrentCulture);
		if (string.IsNullOrEmpty(text))
		{
			return true;
		}
		Match match = Regex.Match(text);
		if (match.Success && match.Index == 0)
		{
			return match.Length == text.Length;
		}
		return false;
	}

	public override string FormatErrorMessage(string name)
	{
		SetupRegex();
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, Pattern);
	}

	private void SetupRegex()
	{
		if (Regex == null)
		{
			if (string.IsNullOrEmpty(Pattern))
			{
				throw new InvalidOperationException("The pattern must be set to a valid regular expression.");
			}
			if (!_matchTimeoutSet)
			{
				MatchTimeoutInMilliseconds = GetDefaultTimeout();
			}
			Regex regex3;
			if (MatchTimeoutInMilliseconds != -1)
			{
				Regex regex = (Regex = new Regex(Pattern, RegexOptions.None, TimeSpan.FromMilliseconds(MatchTimeoutInMilliseconds)));
				regex3 = regex;
			}
			else
			{
				regex3 = new Regex(Pattern);
			}
			Regex = regex3;
		}
	}

	private static int GetDefaultTimeout()
	{
		return 2000;
	}
}
