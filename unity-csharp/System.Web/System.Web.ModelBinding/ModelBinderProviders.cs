using Unity;

namespace System.Web.ModelBinding;

public static class ModelBinderProviders
{
	public static ModelBinderProviderCollection Providers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}
}
