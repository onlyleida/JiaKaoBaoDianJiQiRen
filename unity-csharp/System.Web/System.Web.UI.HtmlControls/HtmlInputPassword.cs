using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[ValidationProperty("Value")]
[SupportsEventValidation]
[DefaultEvent("ServerChange")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputPassword : HtmlInputText, IPostBackDataHandler
{
	public HtmlInputPassword()
		: base("password")
	{
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		Attributes.Remove("value");
		base.RenderAttributes(writer);
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[postDataKey];
		if (Attributes["value"] != text)
		{
			Attributes["value"] = text;
			return true;
		}
		return false;
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		ValidateEvent(UniqueID, string.Empty);
		OnServerChange(EventArgs.Empty);
	}
}
