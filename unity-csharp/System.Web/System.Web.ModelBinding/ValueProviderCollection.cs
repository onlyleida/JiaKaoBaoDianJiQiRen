using System.Collections.Generic;
using System.Collections.ObjectModel;
using Unity;

namespace System.Web.ModelBinding;

public class ValueProviderCollection : Collection<IValueProvider>, IUnvalidatedValueProvider, IValueProvider
{
	public ValueProviderCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ValueProviderCollection(IList<IValueProvider> list)
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

	protected override void InsertItem(int index, IValueProvider item)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void SetItem(int index, IValueProvider item)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
