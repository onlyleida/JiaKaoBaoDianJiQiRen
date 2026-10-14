using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public sealed class ModelValidatingEventArgs : CancelEventArgs
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

	public ModelValidatingEventArgs(ModelBindingExecutionContext modelBindingExecutionContext, ModelValidationNode parentNode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
