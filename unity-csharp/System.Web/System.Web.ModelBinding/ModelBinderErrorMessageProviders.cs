using Unity;

namespace System.Web.ModelBinding;

public static class ModelBinderErrorMessageProviders
{
	public static ModelBinderErrorMessageProvider TypeConversionErrorMessageProvider
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

	public static ModelBinderErrorMessageProvider ValueRequiredErrorMessageProvider
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
