using System.Collections.Generic;

namespace System.ComponentModel.DataAnnotations;

public class ValidationResult
{
	private IEnumerable<string> _memberNames;

	private string _errorMessage;

	public static readonly ValidationResult Success;

	public IEnumerable<string> MemberNames => _memberNames;

	public string ErrorMessage
	{
		get
		{
			return _errorMessage;
		}
		set
		{
			_errorMessage = value;
		}
	}

	public ValidationResult(string errorMessage)
		: this(errorMessage, null)
	{
	}

	public ValidationResult(string errorMessage, IEnumerable<string> memberNames)
	{
		_errorMessage = errorMessage;
		_memberNames = memberNames ?? new string[0];
	}

	protected ValidationResult(ValidationResult validationResult)
	{
		if (validationResult == null)
		{
			throw new ArgumentNullException("validationResult");
		}
		_errorMessage = validationResult._errorMessage;
		_memberNames = validationResult._memberNames;
	}

	public override string ToString()
	{
		return ErrorMessage ?? base.ToString();
	}
}
