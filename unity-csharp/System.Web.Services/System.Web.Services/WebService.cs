using System.ComponentModel;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Security.Principal;
using System.Web.Services.Protocols;
using System.Web.SessionState;

namespace System.Web.Services;

public class WebService : MarshalByValueComponent
{
	private HttpContext context;

	internal static readonly string SoapVersionContextSlot = "WebServiceSoapVersion";

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The ASP.NET application object for the current request.")]
	public HttpApplicationState Application
	{
		[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
		get
		{
			return Context.Application;
		}
	}

	[Browsable(false)]
	[WebServicesDescription("WebServiceContext")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpContext Context
	{
		[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
		get
		{
			PartialTrustHelpers.FailIfInPartialTrustOutsideAspNet();
			if (context == null)
			{
				context = HttpContext.Current;
			}
			if (context == null)
			{
				throw new InvalidOperationException(Res.GetString("WebMissingHelpContext"));
			}
			return context;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebServicesDescription("WebServiceSession")]
	[Browsable(false)]
	public HttpSessionState Session
	{
		[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
		get
		{
			return Context.Session;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[WebServicesDescription("WebServiceServer")]
	public HttpServerUtility Server
	{
		[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
		get
		{
			return Context.Server;
		}
	}

	[Browsable(false)]
	[WebServicesDescription("WebServiceUser")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IPrincipal User
	{
		[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
		get
		{
			return Context.User;
		}
	}

	[ComVisible(false)]
	[WebServicesDescription("WebServiceSoapVersion")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public SoapProtocolVersion SoapVersion
	{
		[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
		get
		{
			object obj = Context.Items[SoapVersionContextSlot];
			if (obj != null && obj is SoapProtocolVersion)
			{
				return (SoapProtocolVersion)obj;
			}
			return SoapProtocolVersion.Default;
		}
	}

	internal void SetContext(HttpContext context)
	{
		this.context = context;
	}
}
