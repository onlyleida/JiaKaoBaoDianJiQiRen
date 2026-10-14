using Unity;

namespace System.Web.ModelBinding;

public static class ModelBinders
{
	public static ModelBinderDictionary Binders
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}
}
