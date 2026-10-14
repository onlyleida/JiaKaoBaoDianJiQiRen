using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public class DataAnnotationsModelValidator : ModelValidator
{
	protected internal ValidationAttribute Attribute
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal string ErrorMessage
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override bool IsRequired
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public DataAnnotationsModelValidator(ModelMetadata metadata, ModelBindingExecutionContext context, ValidationAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual string GetLocalizedErrorMessage(string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected string GetLocalizedString(string name, object[] arguments)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override IEnumerable<ModelValidationResult> Validate(object container)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelValidationResult>)0;
	}
}
public class DataAnnotationsModelValidator<TAttribute> : DataAnnotationsModelValidator
{
	protected new TAttribute Attribute
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public DataAnnotationsModelValidator(ModelMetadata metadata, ModelBindingExecutionContext context, TAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
