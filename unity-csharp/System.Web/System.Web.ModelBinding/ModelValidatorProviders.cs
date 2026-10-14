using Unity;

namespace System.Web.ModelBinding;

public static class ModelValidatorProviders
{
	public static ModelValidatorProviderCollection Providers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}
}
