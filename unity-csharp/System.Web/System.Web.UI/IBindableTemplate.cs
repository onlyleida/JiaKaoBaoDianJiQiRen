using System.Collections.Specialized;

namespace System.Web.UI;

public interface IBindableTemplate : ITemplate
{
	IOrderedDictionary ExtractValues(Control container);
}
