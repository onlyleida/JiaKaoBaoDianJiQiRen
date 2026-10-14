using System.Collections;
using System.Collections.Specialized;
using System.Web.UI.WebControls;
using Unity;

namespace System.Web.UI.Adapters;

public abstract class PageAdapter : ControlAdapter
{
	private ListDictionary radio_button_group;

	public virtual StringCollection CacheVaryByHeaders => null;

	public virtual StringCollection CacheVaryByParams => null;

	protected string ClientState => Page.GetSavedViewState();

	protected PageAdapter()
	{
	}

	internal PageAdapter(Page p)
		: base(p)
	{
	}

	public virtual NameValueCollection DeterminePostBackMode()
	{
		return Page.DeterminePostBackMode();
	}

	public virtual ICollection GetRadioButtonsByGroup(string groupName)
	{
		if (radio_button_group == null)
		{
			return new ArrayList();
		}
		ArrayList arrayList = (ArrayList)radio_button_group[groupName];
		if (arrayList == null)
		{
			return new ArrayList();
		}
		return arrayList;
	}

	public virtual PageStatePersister GetStatePersister()
	{
		return new HiddenFieldPageStatePersister((Page)Control);
	}

	public virtual void RegisterRadioButton(RadioButton radioButton)
	{
		if (radio_button_group == null)
		{
			radio_button_group = new ListDictionary();
		}
		ArrayList arrayList = (ArrayList)radio_button_group[radioButton.GroupName];
		if (arrayList == null)
		{
			arrayList = (ArrayList)(radio_button_group[radioButton.GroupName] = new ArrayList());
		}
		if (!arrayList.Contains(radioButton))
		{
			arrayList.Add(radioButton);
		}
	}

	public virtual void RenderBeginHyperlink(HtmlTextWriter writer, string targetUrl, bool encodeUrl, string softkeyLabel)
	{
		InternalRenderBeginHyperlink(writer, targetUrl, encodeUrl, softkeyLabel, null);
	}

	public virtual void RenderBeginHyperlink(HtmlTextWriter writer, string targetUrl, bool encodeUrl, string softkeyLabel, string accessKey)
	{
		if (accessKey != null && accessKey.Length > 1)
		{
			throw new ArgumentOutOfRangeException("accessKey");
		}
		InternalRenderBeginHyperlink(writer, targetUrl, encodeUrl, softkeyLabel, accessKey);
	}

	private void InternalRenderBeginHyperlink(HtmlTextWriter w, string targetUrl, bool encodeUrl, string softKeyLabel, string accessKey)
	{
		w.AddAttribute(HtmlTextWriterAttribute.Href, targetUrl, encodeUrl);
		if (accessKey != null)
		{
			w.AddAttribute(HtmlTextWriterAttribute.Accesskey, accessKey);
		}
		w.RenderBeginTag(HtmlTextWriterTag.A);
	}

	public virtual void RenderEndHyperlink(HtmlTextWriter writer)
	{
		writer.RenderEndTag();
	}

	public virtual void RenderPostBackEvent(HtmlTextWriter writer, string target, string argument, string softkeyLabel, string text)
	{
		RenderPostBackEvent(writer, target, argument, softkeyLabel, text, Page.Request.FilePath, null, encode: true);
	}

	public virtual void RenderPostBackEvent(HtmlTextWriter writer, string target, string argument, string softkeyLabel, string text, string postUrl, string accessKey)
	{
		RenderPostBackEvent(writer, target, argument, softkeyLabel, text, postUrl, accessKey, encode: true);
	}

	protected void RenderPostBackEvent(HtmlTextWriter writer, string target, string argument, string softkeyLabel, string text, string postUrl, string accessKey, bool encode)
	{
		string targetUrl = $"{postUrl}?__VIEWSTATE={HttpUtility.UrlEncode(Page.GetSavedViewState())}&__EVENTTARGET={target}&__EVENTARGUMENT={argument}&__PREVIOUSPAGE={Page.Request.FilePath}";
		RenderBeginHyperlink(writer, targetUrl, encode, softkeyLabel, accessKey);
		writer.Write(text);
		RenderEndHyperlink(writer);
	}

	public virtual string TransformText(string text)
	{
		return text;
	}

	protected internal virtual string GetPostBackFormReference(string formId)
	{
		return $"document.forms['{formId}']";
	}

	public virtual NameValueCollection DeterminePostBackModeUnvalidated()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
