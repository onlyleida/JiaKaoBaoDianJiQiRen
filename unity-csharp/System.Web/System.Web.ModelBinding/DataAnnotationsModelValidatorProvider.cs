using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class DataAnnotationsModelValidatorProvider : AssociatedValidatorProvider
{
	public static bool AddImplicitRequiredAttributeForValueTypes
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DataAnnotationsModelValidatorProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override IEnumerable<ModelValidator> GetValidators(ModelMetadata metadata, ModelBindingExecutionContext context, IEnumerable<Attribute> attributes)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelValidator>)0;
	}

	public static void RegisterAdapter(Type attributeType, Type adapterType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterAdapterFactory(Type attributeType, DataAnnotationsModelValidationFactory factory)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterDefaultAdapter(Type adapterType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterDefaultAdapterFactory(DataAnnotationsModelValidationFactory factory)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterDefaultValidatableObjectAdapter(Type adapterType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterDefaultValidatableObjectAdapterFactory(DataAnnotationsValidatableObjectAdapterFactory factory)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterValidatableObjectAdapter(Type modelType, Type adapterType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void RegisterValidatableObjectAdapterFactory(Type modelType, DataAnnotationsValidatableObjectAdapterFactory factory)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
