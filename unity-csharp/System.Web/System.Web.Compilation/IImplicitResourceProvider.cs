using System.Collections;
using System.Globalization;

namespace System.Web.Compilation;

public interface IImplicitResourceProvider
{
	object GetObject(ImplicitResourceKey key, CultureInfo culture);

	ICollection GetImplicitResourceKeys(string keyPrefix);
}
