namespace System.Web.ModelBinding;

public interface IUnvalidatedValueProvider : IValueProvider
{
	ValueProviderResult GetValue(string key, bool skipValidation);
}
