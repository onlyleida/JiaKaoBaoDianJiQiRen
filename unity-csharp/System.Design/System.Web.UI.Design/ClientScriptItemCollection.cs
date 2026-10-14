using System.Collections;

namespace System.Web.UI.Design;

public sealed class ClientScriptItemCollection : ReadOnlyCollectionBase
{
	public ClientScriptItemCollection(ClientScriptItem[] clientScriptItems)
	{
		if (clientScriptItems == null)
		{
			throw new ArgumentNullException("clientScriptItems");
		}
		InnerList.AddRange(clientScriptItems);
	}
}
