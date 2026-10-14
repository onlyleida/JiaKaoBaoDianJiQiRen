using System.Collections.Generic;
using System.Globalization;
using Unity;

namespace System.Web.ModelBinding;

public class DictionaryValueProvider<TValue> : IValueProvider
{
	public DictionaryValueProvider(IDictionary<string, TValue> dictionary, CultureInfo culture)
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
}
