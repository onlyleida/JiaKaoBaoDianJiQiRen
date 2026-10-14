using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public abstract class ModelValidator
{
	public virtual bool IsRequired
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected internal ModelMetadata Metadata
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal ModelBindingExecutionContext ModelBindingExecutionContext
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected ModelValidator(ModelMetadata metadata, ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static ModelValidator GetModelValidator(ModelMetadata metadata, ModelBindingExecutionContext context)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract IEnumerable<ModelValidationResult> Validate(object container);
}
