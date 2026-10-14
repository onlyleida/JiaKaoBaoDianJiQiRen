using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.LoginNameDesigner,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultProperty("FormatString")]
[Bindable(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class LoginName : WebControl
{
	[DefaultValue("{0}")]
	[Localizable(true)]
	public virtual string FormatString
	{
		get
		{
			object obj = ViewState["FormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "{0}";
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("FormatString");
			}
			else
			{
				ViewState["FormatString"] = value;
			}
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	private bool Anonymous => User.Length == 0;

	private string User
	{
		get
		{
			if (Page == null || Page.User == null)
			{
				return string.Empty;
			}
			return Page.User.Identity.Name;
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (!Anonymous)
		{
			RenderBeginTag(writer);
			RenderContents(writer);
			RenderEndTag(writer);
		}
	}

	public override void RenderBeginTag(HtmlTextWriter writer)
	{
		if (!Anonymous)
		{
			base.RenderBeginTag(writer);
		}
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		if (!Anonymous)
		{
			string text = (string)ViewState["FormatString"];
			if (text == null || text.Length == 0)
			{
				writer.Write(User);
			}
			else
			{
				writer.Write(text, User);
			}
		}
	}

	public override void RenderEndTag(HtmlTextWriter writer)
	{
		if (!Anonymous)
		{
			base.RenderEndTag(writer);
		}
	}
}
