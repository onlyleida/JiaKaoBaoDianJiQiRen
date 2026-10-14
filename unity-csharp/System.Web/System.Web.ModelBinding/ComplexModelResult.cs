using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public sealed class ComplexModelResult
{
	public object Model
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelValidationNode ValidationNode
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ComplexModelResult(object model, ModelValidationNode validationNode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
