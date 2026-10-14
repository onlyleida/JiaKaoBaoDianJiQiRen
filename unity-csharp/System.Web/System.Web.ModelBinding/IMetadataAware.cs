namespace System.Web.ModelBinding;

public interface IMetadataAware
{
	void OnMetadataCreated(ModelMetadata metadata);
}
