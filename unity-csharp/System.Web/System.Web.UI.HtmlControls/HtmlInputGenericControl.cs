using System.Collections.Specialized;
using System.ComponentModel;
using Unity;

namespace System.Web.UI.HtmlControls;

[DefaultEvent("ServerChange")]
[ValidationProperty("Value")]
public class HtmlInputGenericControl : HtmlInputControl, IPostBackDataHandler
{
	public event EventHandler ServerChange
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public HtmlInputGenericControl()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public HtmlInputGenericControl(string type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual void OnServerChange(EventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
