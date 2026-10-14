using System.Collections.Specialized;
using Unity;

namespace System.Web.UI;

public sealed class BindableTemplateBuilder : TemplateBuilder, IBindableTemplate
{
	public BindableTemplateBuilder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public IOrderedDictionary ExtractValues(Control container)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
