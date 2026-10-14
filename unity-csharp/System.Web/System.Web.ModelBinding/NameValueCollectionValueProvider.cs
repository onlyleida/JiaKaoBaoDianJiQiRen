using System.Collections.Specialized;
using System.Globalization;
using Unity;

namespace System.Web.ModelBinding;

public class NameValueCollectionValueProvider : IUnvalidatedValueProvider, IValueProvider
{
	public NameValueCollectionValueProvider(NameValueCollection collection, NameValueCollection unvalidatedCollection, CultureInfo culture)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public NameValueCollectionValueProvider(NameValueCollection collection, CultureInfo culture)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool ContainsPrefix(string prefix)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual ValueProviderResult GetValue(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual ValueProviderResult GetValue(string key, bool skipValidation)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
