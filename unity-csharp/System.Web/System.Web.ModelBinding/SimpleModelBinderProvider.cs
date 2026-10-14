using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public sealed class SimpleModelBinderProvider : ModelBinderProvider
{
	public Type ModelType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool SuppressPrefixCheck
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

	public SimpleModelBinderProvider(Type modelType, Func<IModelBinder> modelBinderFactory)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public SimpleModelBinderProvider(Type modelType, IModelBinder modelBinder)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
