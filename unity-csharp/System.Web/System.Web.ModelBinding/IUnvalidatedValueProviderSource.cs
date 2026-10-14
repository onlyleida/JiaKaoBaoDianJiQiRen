namespace System.Web.ModelBinding;

public interface IUnvalidatedValueProviderSource : IValueProviderSource
{
	bool ValidateInput { get; set; }
}
