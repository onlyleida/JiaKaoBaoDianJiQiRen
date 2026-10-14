using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public sealed class ModelValidationNode
{
	public ICollection<ModelValidationNode> ChildNodes
	{
		[CompilerGenerated]
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (ICollection<ModelValidationNode>)0;
		}
	}

	public ModelMetadata ModelMetadata
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string ModelStateKey
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool SuppressValidation
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool ValidateAllProperties
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event EventHandler<ModelValidatedEventArgs> Validated
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event EventHandler<ModelValidatingEventArgs> Validating
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ModelValidationNode(ModelMetadata modelMetadata, string modelStateKey)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ModelValidationNode(ModelMetadata modelMetadata, string modelStateKey, IEnumerable<ModelValidationNode> childNodes)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void CombineWith(ModelValidationNode otherNode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Validate(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Validate(ModelBindingExecutionContext modelBindingExecutionContext, ModelValidationNode parentNode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
