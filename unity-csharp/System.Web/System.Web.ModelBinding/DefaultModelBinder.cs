using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public class DefaultModelBinder : IModelBinder
{
	public ModelBinderProviderCollection Providers
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public DefaultModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
