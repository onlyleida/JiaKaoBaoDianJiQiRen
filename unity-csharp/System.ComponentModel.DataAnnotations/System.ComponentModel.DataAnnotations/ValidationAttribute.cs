using System.Globalization;
using System.Reflection;

namespace System.ComponentModel.DataAnnotations;

public abstract class ValidationAttribute : Attribute
{
	private string _errorMessage;

	private Func<string> _errorMessageResourceAccessor;

	private string _errorMessageResourceName;

	private Type _errorMessageResourceType;

	private string _defaultErrorMessage;

	private volatile bool _hasBaseIsValid;

	internal string DefaultErrorMessage
	{
		get
		{
			return _defaultErrorMessage;
		}
		set
		{
			_defaultErrorMessage = value;
			_errorMessageResourceAccessor = null;
			CustomErrorMessageSet = true;
		}
	}

	protected string ErrorMessageString
	{
		get
		{
			SetupResourceAccessor();
			return _errorMessageResourceAccessor();
		}
	}

	internal bool CustomErrorMessageSet { get; private set; }

	public virtual bool RequiresValidationContext => false;

	public string ErrorMessage
	{
		get
		{
			return _errorMessage ?? _defaultErrorMessage;
		}
		set
		{
			_errorMessage = value;
			_errorMessageResourceAccessor = null;
			CustomErrorMessageSet = true;
			if (value == null)
			{
				_defaultErrorMessage = null;
			}
		}
	}

	public string ErrorMessageResourceName
	{
		get
		{
			return _errorMessageResourceName;
		}
		set
		{
			_errorMessageResourceName = value;
			_errorMessageResourceAccessor = null;
			CustomErrorMessageSet = true;
		}
	}

	public Type ErrorMessageResourceType
	{
		get
		{
			return _errorMessageResourceType;
		}
		set
		{
			_errorMessageResourceType = value;
			_errorMessageResourceAccessor = null;
			CustomErrorMessageSet = true;
		}
	}

	protected ValidationAttribute()
		: this(() => "The field {0} is invalid.")
	{
	}

	protected ValidationAttribute(string errorMessage)
		: this(() => errorMessage)
	{
	}

	protected ValidationAttribute(Func<string> errorMessageAccessor)
	{
		_errorMessageResourceAccessor = errorMessageAccessor;
	}

	private void SetupResourceAccessor()
	{
		if (_errorMessageResourceAccessor != null)
		{
			return;
		}
		string localErrorMessage = ErrorMessage;
		bool flag = !string.IsNullOrEmpty(_errorMessageResourceName);
		bool flag2 = !string.IsNullOrEmpty(_errorMessage);
		bool flag3 = _errorMessageResourceType != null;
		bool flag4 = !string.IsNullOrEmpty(_defaultErrorMessage);
		if ((flag & flag2) || !(flag | flag2 | flag4))
		{
			throw new InvalidOperationException("Either ErrorMessageString or ErrorMessageResourceName must be set, but not both.");
		}
		if (flag3 != flag)
		{
			throw new InvalidOperationException("Both ErrorMessageResourceType and ErrorMessageResourceName need to be set on this attribute.");
		}
		if (flag)
		{
			SetResourceAccessorByPropertyLookup();
			return;
		}
		_errorMessageResourceAccessor = () => localErrorMessage;
	}

	private void SetResourceAccessorByPropertyLookup()
	{
		if (_errorMessageResourceType != null && !string.IsNullOrEmpty(_errorMessageResourceName))
		{
			PropertyInfo property = _errorMessageResourceType.GetProperty(_errorMessageResourceName, BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic);
			if (property != null)
			{
				MethodInfo getMethod = property.GetGetMethod(nonPublic: true);
				if (getMethod == null || (!getMethod.IsAssembly && !getMethod.IsPublic))
				{
					property = null;
				}
			}
			if (property == null)
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The resource type '{0}' does not have an accessible static property named '{1}'.", _errorMessageResourceType.FullName, _errorMessageResourceName));
			}
			if (property.PropertyType != typeof(string))
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The property '{0}' on resource type '{1}' is not a string type.", property.Name, _errorMessageResourceType.FullName));
			}
			_errorMessageResourceAccessor = () => (string)property.GetValue(null, null);
			return;
		}
		throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "Both ErrorMessageResourceType and ErrorMessageResourceName need to be set on this attribute."));
	}

	public virtual string FormatErrorMessage(string name)
	{
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name);
	}

	public virtual bool IsValid(object value)
	{
		if (!_hasBaseIsValid)
		{
			_hasBaseIsValid = true;
		}
		return IsValid(value, null) == null;
	}

	protected virtual ValidationResult IsValid(object value, ValidationContext validationContext)
	{
		if (_hasBaseIsValid)
		{
			throw new NotImplementedException("IsValid(object value) has not been implemented by this class.  The preferred entry point is GetValidationResult() and classes should override IsValid(object value, ValidationContext context).");
		}
		ValidationResult result = ValidationResult.Success;
		if (!IsValid(value))
		{
			string[] memberNames = ((validationContext.MemberName == null) ? null : new string[1] { validationContext.MemberName });
			result = new ValidationResult(FormatErrorMessage(validationContext.DisplayName), memberNames);
		}
		return result;
	}

	public ValidationResult GetValidationResult(object value, ValidationContext validationContext)
	{
		if (validationContext == null)
		{
			throw new ArgumentNullException("validationContext");
		}
		ValidationResult validationResult = IsValid(value, validationContext);
		if (validationResult != null && (validationResult == null || string.IsNullOrEmpty(validationResult.ErrorMessage)))
		{
			validationResult = new ValidationResult(FormatErrorMessage(validationContext.DisplayName), validationResult.MemberNames);
		}
		return validationResult;
	}

	public void Validate(object value, string name)
	{
		if (!IsValid(value))
		{
			throw new ValidationException(FormatErrorMessage(name), this, value);
		}
	}

	public void Validate(object value, ValidationContext validationContext)
	{
		if (validationContext == null)
		{
			throw new ArgumentNullException("validationContext");
		}
		ValidationResult validationResult = GetValidationResult(value, validationContext);
		if (validationResult != null)
		{
			throw new ValidationException(validationResult, this, value);
		}
	}
}
