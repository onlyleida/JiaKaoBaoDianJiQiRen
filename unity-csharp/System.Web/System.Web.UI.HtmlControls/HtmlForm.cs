using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlForm : HtmlContainerControl
{
	private bool inited;

	private string _defaultfocus;

	private string _defaultbutton;

	private bool submitdisabledcontrols;

	private bool? isUplevel;

	public string Action
	{
		get
		{
			string text = Attributes["action"];
			if (string.IsNullOrEmpty(text))
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (string.IsNullOrEmpty(value))
			{
				Attributes["action"] = null;
			}
			else
			{
				Attributes["action"] = value;
			}
		}
	}

	[DefaultValue("")]
	public string DefaultButton
	{
		get
		{
			return _defaultbutton ?? string.Empty;
		}
		set
		{
			_defaultbutton = value;
		}
	}

	[DefaultValue("")]
	public string DefaultFocus
	{
		get
		{
			return _defaultfocus ?? string.Empty;
		}
		set
		{
			_defaultfocus = value;
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Enctype
	{
		get
		{
			string text = Attributes["enctype"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("enctype");
			}
			else
			{
				Attributes["enctype"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Method
	{
		get
		{
			string text = Attributes["method"];
			if (text == null || text.Length == 0)
			{
				return "post";
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("method");
			}
			else
			{
				Attributes["method"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Name
	{
		get
		{
			return UniqueID;
		}
		set
		{
		}
	}

	[DefaultValue(false)]
	public virtual bool SubmitDisabledControls
	{
		get
		{
			return submitdisabledcontrols;
		}
		set
		{
			submitdisabledcontrols = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public string Target
	{
		get
		{
			string text = Attributes["target"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("target");
			}
			else
			{
				Attributes["target"] = value;
			}
		}
	}

	public override string UniqueID
	{
		get
		{
			if (NamingContainer == Page)
			{
				return ID;
			}
			return "aspnetForm";
		}
	}

	public HtmlForm()
		: base("form")
	{
	}

	[MonoTODO("why override?")]
	protected override ControlCollection CreateControlCollection()
	{
		return base.CreateControlCollection();
	}

	protected internal override void OnInit(EventArgs e)
	{
		inited = true;
		Page page = Page;
		if (page != null)
		{
			page.RegisterViewStateHandler();
			page.RegisterForm(this);
		}
		base.OnInit(e);
	}

	internal bool DetermineRenderUplevel()
	{
		if (isUplevel.HasValue)
		{
			return isUplevel.Value;
		}
		isUplevel = UplevelHelper.IsUplevel(HttpCapabilitiesBase.GetUserAgentForDetection(HttpContext.Current.Request));
		return isUplevel.Value;
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		string text = Attributes["action"];
		Page page = Page;
		HttpRequest httpRequest = page?.RequestInternal;
		string text4;
		if (string.IsNullOrEmpty(text))
		{
			string text2 = httpRequest?.ClientFilePath;
			string text3 = httpRequest?.CurrentExecutionFilePath;
			if (text2 == null)
			{
				text4 = Action;
			}
			else if (text2 == text3)
			{
				text4 = UrlUtils.GetFile(text2);
			}
			else
			{
				bool flag = WebConfigurationManager.GetSection("system.web/sessionState") is SessionStateSection sessionStateSection && sessionStateSection.Cookieless == HttpCookieMode.UseUri;
				string appDomainAppVirtualPath = HttpRuntime.AppDomainAppVirtualPath;
				int length = appDomainAppVirtualPath.Length;
				if (length > 1)
				{
					if (flag)
					{
						if (StrUtils.StartsWith(text2, appDomainAppVirtualPath, ignore_case: true))
						{
							text2 = text2.Substring(length + 1);
						}
					}
					else if (StrUtils.StartsWith(text3, appDomainAppVirtualPath, ignore_case: true))
					{
						text3 = text3.Substring(length + 1);
					}
				}
				if (flag)
				{
					Uri toUri = new Uri("http://host" + text3);
					text4 = new Uri("http://host" + text2).MakeRelative(toUri);
				}
				else
				{
					text4 = text3;
				}
			}
		}
		else
		{
			text4 = text;
		}
		if (httpRequest != null)
		{
			text4 += httpRequest.QueryStringRaw;
		}
		if (httpRequest != null && !(WebConfigurationManager.GetSection("system.web/xhtmlConformance") is XhtmlConformanceSection { Mode: XhtmlConformanceMode.Strict }) && RenderingCompatibilityLessThan40)
		{
			writer.WriteAttribute("name", Name);
		}
		writer.WriteAttribute("method", Method);
		if (string.IsNullOrEmpty(text))
		{
			writer.WriteAttribute("action", text4, fEncode: true);
		}
		if (ID == null)
		{
			_ = ClientID;
		}
		string value = page?.GetSubmitStatements();
		if (!string.IsNullOrEmpty(value))
		{
			Attributes.Remove("onsubmit");
			writer.WriteAttribute("onsubmit", value);
		}
		string enctype = Enctype;
		if (!string.IsNullOrEmpty(enctype))
		{
			writer.WriteAttribute("enctype", enctype);
		}
		string target = Target;
		if (!string.IsNullOrEmpty(target))
		{
			writer.WriteAttribute("target", target);
		}
		string defaultButton = DefaultButton;
		if (!string.IsNullOrEmpty(defaultButton))
		{
			Control control = FindControl(defaultButton);
			if (control == null || !(control is IButtonControl))
			{
				throw new InvalidOperationException($"The DefaultButton of '{ID}' must be the ID of a control of type IButtonControl.");
			}
			if (page != null && DetermineRenderUplevel())
			{
				writer.WriteAttribute("onkeypress", "javascript:return " + page.WebFormScriptReference + ".WebForm_FireDefaultButton(event, '" + control.ClientID + "')");
			}
		}
		Attributes.Remove("method");
		Attributes.Remove("enctype");
		Attributes.Remove("target");
		base.RenderAttributes(writer);
	}

	protected internal override void RenderChildren(HtmlTextWriter writer)
	{
		Page page = Page;
		if (!inited && page != null)
		{
			page.RegisterViewStateHandler();
			page.RegisterForm(this);
		}
		page?.OnFormRender(writer, ClientID);
		base.RenderChildren(writer);
		page?.OnFormPostRender(writer, ClientID);
	}

	[MonoTODO("why override?")]
	public override void RenderControl(HtmlTextWriter writer)
	{
		base.RenderControl(writer);
	}

	protected internal override void Render(HtmlTextWriter output)
	{
		base.Render(output);
	}
}
