using System.Collections.Specialized;

namespace System.Web.UI;

public interface IPostBackDataHandler
{
	bool LoadPostData(string postDataKey, NameValueCollection postCollection);

	void RaisePostDataChangedEvent();
}
