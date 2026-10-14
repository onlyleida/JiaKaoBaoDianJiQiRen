using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public class DataAnnotationsModelMetadata : ModelMetadata
{
	public DataAnnotationsModelMetadata(DataAnnotationsModelMetadataProvider provider, Type containerType, Func<object> modelAccessor, Type modelType, string propertyName, DisplayColumnAttribute displayColumnAttribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetSimpleDisplayText()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
