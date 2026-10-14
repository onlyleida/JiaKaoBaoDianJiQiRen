using Unity;

namespace System.Web.ModelBinding;

public static class ModelMetadataProviders
{
	public static ModelMetadataProvider Current
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}
}
