using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Security;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.LoginStatusDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[Bindable(false)]
[DefaultEvent("LoggingOut")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class LoginStatus : CompositeControl
{
	private static readonly object loggedOutEvent = new object();

	private static readonly object loggingOutEvent = new object();

	private LinkButton logoutLinkButton;

	private ImageButton logoutImageButton;

	private LinkButton loginLinkButton;

	private ImageButton loginImageButton;

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string LoginImageUrl
	{
		get
		{
			object obj = ViewState["LoginImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LoginImageUrl");
			}
			else
			{
				ViewState["LoginImageUrl"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string LoginText
	{
		get
		{
			object obj = ViewState["LoginText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Login");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LoginText");
			}
			else
			{
				ViewState["LoginText"] = value;
			}
		}
	}

	[Themeable(false)]
	[DefaultValue(LogoutAction.Refresh)]
	public virtual LogoutAction LogoutAction
	{
		get
		{
			object obj = ViewState["LogoutAction"];
			if (obj != null)
			{
				return (LogoutAction)obj;
			}
			return LogoutAction.Refresh;
		}
		set
		{
			if (value < LogoutAction.Refresh || value > LogoutAction.RedirectToLoginPage)
			{
				throw new ArgumentOutOfRangeException("LogoutAction");
			}
			ViewState["LogoutAction"] = (int)value;
		}
	}

	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string LogoutImageUrl
	{
		get
		{
			object obj = ViewState["LogoutImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LogoutImageUrl");
			}
			else
			{
				ViewState["LogoutImageUrl"] = value;
			}
		}
	}

	[Themeable(false)]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string LogoutPageUrl
	{
		get
		{
			object obj = ViewState["LogoutPageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LogoutPageUrl");
			}
			else
			{
				ViewState["LogoutPageUrl"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string LogoutText
	{
		get
		{
			object obj = ViewState["LogoutText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Logout");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LogoutText");
			}
			else
			{
				ViewState["LogoutText"] = value;
			}
		}
	}

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.A;

	public event EventHandler LoggedOut
	{
		add
		{
			Events.AddHandler(loggedOutEvent, value);
		}
		remove
		{
			Events.RemoveHandler(loggedOutEvent, value);
		}
	}

	public event LoginCancelEventHandler LoggingOut
	{
		add
		{
			Events.AddHandler(loggingOutEvent, value);
		}
		remove
		{
			Events.RemoveHandler(loggingOutEvent, value);
		}
	}

	protected internal override void CreateChildControls()
	{
		Controls.Clear();
		logoutLinkButton = new LinkButton();
		logoutLinkButton.CausesValidation = false;
		logoutLinkButton.Command += LogoutClick;
		logoutImageButton = new ImageButton();
		logoutImageButton.CausesValidation = false;
		logoutImageButton.Command += LogoutClick;
		loginLinkButton = new LinkButton();
		loginLinkButton.CausesValidation = false;
		loginLinkButton.Command += LoginClick;
		loginImageButton = new ImageButton();
		loginImageButton.CausesValidation = false;
		loginImageButton.Command += LoginClick;
		Controls.Add(logoutLinkButton);
		Controls.Add(logoutImageButton);
		Controls.Add(loginLinkButton);
		Controls.Add(loginImageButton);
	}

	protected virtual void OnLoggedOut(EventArgs e)
	{
		((EventHandler)Events[loggedOutEvent])?.Invoke(this, e);
	}

	protected virtual void OnLoggingOut(LoginCancelEventArgs e)
	{
		((LoginCancelEventHandler)Events[loggingOutEvent])?.Invoke(this, e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (writer != null)
		{
			RenderContents(writer);
		}
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		if (writer != null)
		{
			EnsureChildControls();
			bool flag = false;
			if (Page != null)
			{
				Page.VerifyRenderingInServerForm(this);
				flag = Page.Request.IsAuthenticated;
			}
			bool flag2 = LogoutImageUrl.Length > 0;
			logoutLinkButton.Visible = flag && !flag2;
			logoutImageButton.Visible = flag & flag2;
			bool flag3 = LoginImageUrl.Length > 0;
			loginLinkButton.Visible = !flag && !flag3;
			loginImageButton.Visible = !flag & flag3;
			if (logoutLinkButton.Visible)
			{
				logoutLinkButton.Text = LogoutText;
				logoutLinkButton.CssClass = CssClass;
				logoutLinkButton.Render(writer);
			}
			else if (logoutImageButton.Visible)
			{
				logoutImageButton.AlternateText = LogoutText;
				logoutImageButton.CssClass = CssClass;
				logoutImageButton.ImageUrl = LogoutImageUrl;
				writer.AddAttribute(HtmlTextWriterAttribute.Name, logoutImageButton.UniqueID);
				logoutImageButton.Render(writer);
			}
			else if (loginLinkButton.Visible)
			{
				loginLinkButton.Text = LoginText;
				loginLinkButton.CssClass = CssClass;
				loginLinkButton.Render(writer);
			}
			else if (loginImageButton.Visible)
			{
				loginImageButton.AlternateText = LoginText;
				loginImageButton.CssClass = CssClass;
				loginImageButton.ImageUrl = LoginImageUrl;
				writer.AddAttribute(HtmlTextWriterAttribute.Name, loginImageButton.UniqueID);
				loginImageButton.Render(writer);
			}
		}
	}

	[MonoTODO("for design-time usage - no more details available")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override void SetDesignModeState(IDictionary data)
	{
		base.SetDesignModeState(data);
	}

	private void LogoutClick(object sender, CommandEventArgs e)
	{
		LoginCancelEventArgs e2 = new LoginCancelEventArgs(cancel: false);
		OnLoggingOut(e2);
		if (e2.Cancel)
		{
			return;
		}
		FormsAuthentication.SignOut();
		OnLoggedOut(e);
		switch (LogoutAction)
		{
		case LogoutAction.Refresh:
			HttpContext.Current.Response.Redirect(Page.Request.Url.AbsoluteUri);
			break;
		case LogoutAction.RedirectToLoginPage:
			FormsAuthentication.RedirectToLoginPage();
			break;
		case LogoutAction.Redirect:
		{
			string text = LogoutPageUrl;
			if (text.Length == 0)
			{
				text = Page.Request.Url.AbsoluteUri;
			}
			HttpContext.Current.Response.Redirect(text);
			break;
		}
		}
	}

	private void LoginClick(object sender, CommandEventArgs e)
	{
		FormsAuthentication.RedirectToLoginPage();
	}
}
