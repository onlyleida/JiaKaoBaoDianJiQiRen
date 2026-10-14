using System.Collections.Specialized;

namespace System.Web.UI;

public interface IBindableControl
{
	void ExtractValues(IOrderedDictionary dictionary);
}
