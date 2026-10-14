using System.Runtime.Serialization;

namespace System.ComponentModel.DataAnnotations;

[Serializable]
public class ValidationException : Exception
{
	private ValidationResult _validationResult;

	public ValidationAttribute ValidationAttribute { get; private set; }

	public ValidationResult ValidationResult
	{
		get
		{
			if (_validationResult == null)
			{
				_validationResult = new ValidationResult(Message);
			}
			return _validationResult;
		}
	}

	public object Value { get; private set; }

	public ValidationException(ValidationResult validationResult, ValidationAttribute validatingAttribute, object value)
		: this(validationResult.ErrorMessage, validatingAttribute, value)
	{
		_validationResult = validationResult;
	}

	public ValidationException(string errorMessage, ValidationAttribute validatingAttribute, object value)
		: base(errorMessage)
	{
		Value = value;
		ValidationAttribute = validatingAttribute;
	}

	public ValidationException()
	{
	}

	public ValidationException(string message)
		: base(message)
	{
	}

	public ValidationException(string message, Exception innerException)
		: base(message, innerException)
	{
	}

	protected ValidationException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}
}
