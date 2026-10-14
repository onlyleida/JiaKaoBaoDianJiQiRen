using System.Collections.Generic;
using System.Collections.ObjectModel;
using Unity;

namespace System.Web.ModelBinding;

public sealed class ModelBinderProviderCollection : Collection<ModelBinderProvider>
{
	public ModelBinderProviderCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ModelBinderProviderCollection(IList<ModelBinderProvider> list)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected override void InsertItem(int index, ModelBinderProvider item)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RegisterBinderForGenericType(Type modelType, Func<Type[], IModelBinder> modelBinderFactory)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RegisterBinderForGenericType(Type modelType, Type modelBinderType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RegisterBinderForGenericType(Type modelType, IModelBinder modelBinder)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RegisterBinderForType(Type modelType, Func<IModelBinder> modelBinderFactory)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RegisterBinderForType(Type modelType, IModelBinder modelBinder)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void SetItem(int index, ModelBinderProvider item)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
