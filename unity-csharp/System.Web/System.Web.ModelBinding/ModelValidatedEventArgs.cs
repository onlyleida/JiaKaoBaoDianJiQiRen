using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public sealed class ModelValidatedEventArgs : EventArgs
{
	public ModelBindingExecutionContext ModelBindingExecutionContext
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelValidationNode ParentNode
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelValidatedEventArgs(ModelBindingExecutionContext modelBindingExecutionContext, ModelValidationNode parentNode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
